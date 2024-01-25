import 'package:dealerapp/src/utils/global_exports.dart';
import 'package:dealerapp/src/widgets/k_bottom_bar_button.dart';

class PaymentOptions extends StatefulWidget {
  const PaymentOptions({required this.walletAmount, super.key});
  final double walletAmount;

  @override
  State<PaymentOptions> createState() => _PaymentOptionsState();
}

class _PaymentOptionsState extends State<PaymentOptions> {
  PaymentOption _selectedOption = PaymentOption.wallet; // Default selection

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Image.asset(AppImages.newLogo, height: 80),
        centerTitle: true,
      ),
      /* appBar: MyAppBar(
        title: "Select an option to pay",
        isBackButton: false,
        actions: [],
      ), */
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select an option to pay',
              style: textTheme.headlineLarge,
            ),
            SizedBox(height: 20.h),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                border: Border.all(color: AppTheme.cardBorders),
              ),
              child: Column(
                children: [
                  ListTile(
                    title: Row(
                      children: [
                        Checkbox(
                          value: _selectedOption == PaymentOption.wallet,
                          onChanged: (bool? value) {
                            setState(() {
                              _selectedOption = value!
                                  ? PaymentOption.wallet
                                  : PaymentOption.none;
                            });
                          },
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Wallet Amount'),
                              Text(
                                '₹${widget.walletAmount.toStringAsFixed(2)}',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 280.w,
                    child: KBottomBarButton(
                      text: 'Pay ₹${widget.walletAmount.toStringAsFixed(2)}',
                      onTap: () {},
                    ),
                  ),
                  SizedBox(height: 20.h),
                  const Divider(
                    height: 10,
                    color: AppTheme.cardBorders,
                  ),
                  ListTile(
                    title: const Text('Pay Online'),
                    leading: Radio(
                      value: PaymentOption.online,
                      groupValue: _selectedOption,
                      onChanged: (PaymentOption? value) {
                        setState(() {
                          _selectedOption = value!;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum PaymentOption {
  wallet,
  online,
  none,
}
