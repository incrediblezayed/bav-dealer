import 'dart:async';

import 'package:collection/collection.dart';
import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/utils/index.dart';
import 'package:dealerapp/src/widgets/k_bottom_bar_button.dart';
import 'package:dealerapp/src/widgets/k_textfiled.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final otpResendTimeProvider = StateProvider<int>((ref) => 0);

class VerifyMouOtp extends ConsumerStatefulWidget {
  const VerifyMouOtp({super.key});

  @override
  ConsumerState<VerifyMouOtp> createState() => _VerifyMouOtpState();
}

class _VerifyMouOtpState extends ConsumerState<VerifyMouOtp> {
  @override
  void initState() {
    super.initState();
    final initialTime = ref.read(otpResendTimeProvider);
    if (initialTime > 0) {
      _remainingTime = initialTime;
      startTimer();
    } else {
      ref.read(authProvider.notifier).sendMouApprovalOTP().then((value) {
        if (value) {
          if (value) {
            AppRoutes.showSuccessSnackbar(message: 'OTP sent successfully');
            startTimer();
          }
        }
      });
    }
  }

  Timer? _timer;
  int _remainingTime = 60;

  void startTimer() {
    _remainingTime = ref.read(otpResendTimeProvider) == 0
        ? 60
        : ref.read(otpResendTimeProvider);
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_remainingTime > 0) {
        setState(() {
          _remainingTime--;
        });
        ref.read(otpResendTimeProvider.notifier).state = _remainingTime;
      } else {
        _timer?.cancel();
      }
    });
  }

  @override
  void dispose() {
    for (var i = 0; i < otpController.length; i++) {
      otpController[i].dispose();
      listenerController[i].dispose();
      otpNode[i].dispose();
    }
    super.dispose();
  }

  final List<FocusNode> listenerController =
      List.generate(6, (index) => FocusNode());
  final List<FocusNode> otpNode = List.generate(6, (index) => FocusNode());
  final List<TextEditingController> otpController =
      List.generate(6, (index) => TextEditingController());

  @override
  Widget build(BuildContext context) {
    final authPro = ref.watch(authProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verify MOU'),
      ),
      extendBodyBehindAppBar: true,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: otpController
                  .mapIndexed(
                    (i, e) => SizedBox(
                      width: MediaQuery.sizeOf(context).width * .12,
                      child: KeyboardListener(
                        focusNode: listenerController[i],
                        onKeyEvent: (value) {
                          if (value.logicalKey ==
                              LogicalKeyboardKey.backspace) {
                            if (i != 0) {
                              otpNode[i - 1].requestFocus();
                            }
                          } else {
                            if (otpController[i].text.isNotEmpty) {
                              if (i != 5) {
                                otpNode[i + 1].requestFocus();
                                otpController[i + 1].text =
                                    value.logicalKey.keyLabel;
                              }
                            }
                          }
                        },
                        child: KTextField(
                          maxLength: 1,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          inputType: TextInputType.number,
                          contextMenuBuilder: (context, editableTextState) {
                            final option = ContextMenuButtonItem(
                              label: 'Paste',
                              onPressed: () {
                                Clipboard.getData('text/plain').then((value) {
                                  if (value != null &&
                                      value.text != null &&
                                      value.text!.isNotEmpty) {
                                    value.text!
                                        .split('')
                                        .forEachIndexed((index, element) {
                                      authPro.otpController[index].text =
                                          element;
                                    });
                                  }
                                });
                              },
                            );
                            return AdaptiveTextSelectionToolbar.buttonItems(
                              buttonItems: [option],
                              anchors: editableTextState.contextMenuAnchors,
                            );
                          },
                          onChanged: (value) {
                            print(value);
                            if (value.isNotEmpty) {
                              if (i != 5) {
                                otpNode[i + 1].requestFocus();
                              }
                            } else {
                              if (i != 0) {
                                otpNode[i - 1].requestFocus();
                              }
                            }
                          },
                          focusNode: otpNode[i],
                          controller: otpController[i],
                          hintText: '',
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
            const SizedBox(height: 20),
            AnimatedBuilder(
              animation: Listenable.merge(otpController),
              builder: (context, child) {
                return KBottomBarButton(
                  color:
                      otpController.every((element) => element.text.isNotEmpty)
                          ? AppTheme.primaryColor
                          : Colors.grey,
                  text: 'Verify',
                  onTap: () {
                    authPro
                        .validateOTP(
                      key: 'mou',
                      otp: otpController.map((e) => e.text).join(),
                    )
                        .then((value) {
                      if (value) {
                        AppRoutes.showSuccessSnackbar(
                            message: 'OTP verified successfully');
                        AppRoutes.pop(true);
                      } else {
                        AppRoutes.showErrorSnackbar(
                            message: 'OTP verification failed');
                      }
                    });
                  },
                );
              },
            ),
            Consumer(builder: (context, ref, child) {
              final otpResendTime = ref.watch(otpResendTimeProvider);
              return TextButton(
                onPressed: otpResendTime == 0
                    ? () {
                        startTimer();
                      }
                    : null,
                child: const Text('Resend OTP'),
              );
            })
          ],
        ),
      ),
    );
  }
}
