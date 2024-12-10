import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/utils/extensions.dart';
import 'package:dealerapp/src/utils/global_exports.dart';
import 'package:dealerapp/src/widgets/k_button.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:iconsax/iconsax.dart';

final currentLocationProvider = FutureProvider<LatLng?>((ref) async {
  try {
    final status = await Geolocator.checkPermission();
    if (status == LocationPermission.denied) {
      await Geolocator.requestPermission();
    } else {
      final pos = await Geolocator.getCurrentPosition();
      return LatLng(pos.latitude, pos.longitude);
    }
  } catch (e) {
    e.log();
    return null;
  }
  return null;
});

class AddressPage extends ConsumerWidget {
  const AddressPage({super.key});

  Widget pin() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Icon(Icons.place, size: 56),
          Container(
            decoration: const ShapeDecoration(
              shadows: [
                BoxShadow(
                  blurRadius: 4,
                  color: Colors.black38,
                ),
              ],
              shape: CircleBorder(
                side: BorderSide(
                  width: 4,
                  color: Colors.transparent,
                ),
              ),
            ),
          ),
          const SizedBox(height: 56),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentLocation = ref.watch(currentLocationProvider);

    LatLng defaultPosition = const LatLng(17.388489813630333, 78.4793639784594);

    //   LatLng cameraPosition {
    //   final authProv = ref.watch(authProvider);
    //   final latlng = const LatLng(17.388489813630333, 78.4793639784594) ?? currentLocationProvider;

    // }
    final theme = Theme.of(context).textTheme;
    final authPro = ref.watch(authProvider);
    LatLng? lastMapPosition;
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding:
              EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h, bottom: 10.h),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  if (authPro.currentPageIndex <
                      authPro.signUpPages.length - 1) {
                    authPro.signUpPageController.animateToPage(
                      authPro.currentPageIndex - 1,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  }
                },
                child: const Icon(
                  Iconsax.arrow_left,
                  color: AppTheme.textColor,
                ),
              ),
              SizedBox(width: 10.w),
              Text(
                'Select showroom location',
                style: theme.headlineLarge,
              ),
            ],
          ),
        ),
        Expanded(
          child: currentLocation.when(
            data: (data) {
              final cameraPosition =
                  CameraPosition(target: data ?? defaultPosition, zoom: 14);
              return Stack(
                children: [
                  GoogleMap(
                    initialCameraPosition: cameraPosition,
                    onCameraMove: (position) async {
                      lastMapPosition = position.target;
                    },
                    onCameraIdle: () async {
                      if (lastMapPosition != null) {
                        await authPro.setAddressFromLatLng(lastMapPosition!);
                      }
                    },
                  ),
                  Center(
                    child: pin(),
                  ),
                ],
              );
            },
            error: (error, stackTrace) => const Center(
              child: Text('Failed to get your current location'),
            ),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: KButton(
            onPressed: () async {
              /*    if (authPro.shopAddressController.text.isEmpty) {
                      AppRoutes.showErrorSnackbar(
                          message: 'Please fill the shop address');
                    } */
              await authPro.register();
            },
            text: 'Next',
          ),
        ),
      ],
    )
        // body: GoogleMap(initialCameraPosition: CameraPosition(target: cameraPosition)),

        // body: Padding(
        //   padding:
        //       EdgeInsets.only(left: 20.w, right: 20.w, top: 30.h, bottom: 30.h),
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       Row(
        //         children: [
        //           GestureDetector(
        //             onTap: () {
        //               if (authPro.currentPageIndex <
        //                   authPro.signUpPages.length - 1) {
        //                 authPro.signUpPageController.animateToPage(
        //                   authPro.currentPageIndex - 1,
        //                   duration: const Duration(milliseconds: 300),
        //                   curve: Curves.easeInOut,
        //                 );
        //               }
        //             },
        //             child: const Icon(
        //               Iconsax.arrow_left,
        //               color: AppTheme.textColor,
        //             ),
        //           ),
        //           SizedBox(width: 10.w),
        //           Text(
        //             'Address',
        //             style: theme.headlineLarge,
        //           ),
        //         ],
        //       ),
        //       SizedBox(
        //         height: 26.h,
        //       ),
        //       KTextField(
        //         controller: authPro.shopAddressController,
        //         hintText: 'Enter Your Address',
        //         label: 'Shop Address',
        //       ),
        //       SizedBox(
        //         height: 4.h,
        //       ),
        //       SizedBox(
        //         height: 26.h,
        //       ),
        //       KButton(
        //         onPressed: () async {
        //           /*    if (authPro.shopAddressController.text.isEmpty) {
        //             AppRoutes.showErrorSnackbar(
        //                 message: 'Please fill the shop address');
        //           } */
        //           await authPro.register();
        //         },
        //         text: 'Next',
        //       ),
        //     ],
        //   ),
        // ),
        );
  }
}
