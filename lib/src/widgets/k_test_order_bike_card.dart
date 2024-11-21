import 'package:auto_size_text/auto_size_text.dart';
import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/app/provider/order_provider.dart';
import 'package:dealerapp/src/app/repository/orders/graphql/__generated__/orders.data.gql.dart';
import 'package:dealerapp/src/utils/extensions.dart';
import 'package:dealerapp/src/utils/global_exports.dart';
import 'package:dealerapp/src/widgets/k_cached_network_image.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class KTestOrdersBikeCard extends ConsumerStatefulWidget {
  ///
  const KTestOrdersBikeCard({
    required this.vehicleTestDriveOrders,
    super.key,
  });
  final GTestDriveOrdersData_testDriveOrders vehicleTestDriveOrders;

  @override
  ConsumerState<KTestOrdersBikeCard> createState() =>
      _KPurchaseOrderBikeCardState();
}

class _KPurchaseOrderBikeCardState extends ConsumerState<KTestOrdersBikeCard> {
  GTestDriveOrdersData_testDriveOrders get vehicleTestDriveOrders =>
      widget.vehicleTestDriveOrders;

  String rejectionReason = '';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    final ordersPro = ref.read(orderProvider(OrderFamily.purchaseOrders));
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10.h,
                horizontal: 10.w,
              ),
              child: Container(
                decoration: BoxDecoration(
                  // color: const Color(0xffe0f4f2),
                  color: AppTheme.primaryColor.withOpacity(.1),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                width: double.maxFinite,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 16.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        'ORDER ID #${widget.vehicleTestDriveOrders.id}',
                        style: theme.labelLarge!.copyWith(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: AppTheme.black,
                        ),
                      ),
                      SizedBox(height: 6.h),
                      AutoSizeText(
                        widget.vehicleTestDriveOrders.createdAt!.toDateTime!
                            .toLocal()
                            .formatTohhmmaddMMyy,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 6.h),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
              ),
              child: AutoSizeText(
                'EV Model Details',
                style: theme.headlineMedium,
              ),
            ),
            SizedBox(height: 6.h),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
                vertical: 10.h,
              ),
              child: Row(
                children: [
                  Container(
                    height: 100.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(6.r),
                      child: KCachedNWImage(
                        widget.vehicleTestDriveOrders.dealer!.vehicleColor
                                ?.images?.firstOrNull?.image?.url ??
                            '',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AutoSizeText(
                          widget.vehicleTestDriveOrders.dealer!.vehicleVariant!
                              .name!,
                          style: theme.headlineMedium,
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AutoSizeText(
                                  'Model',
                                  style: theme.labelMedium!.copyWith(
                                    color: Colors.black.withOpacity(.5),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 6.h),
                                AutoSizeText(
                                  'Color',
                                  style: theme.labelMedium!.copyWith(
                                    color: Colors.black.withOpacity(.5),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 6.h),
                                AutoSizeText(
                                  'Price',
                                  style: theme.labelMedium!.copyWith(
                                    color: Colors.black.withOpacity(.5),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 20.w),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AutoSizeText(
                                    widget.vehicleTestDriveOrders.dealer!
                                        .vehicleVariant!.name!,
                                    style: theme.labelMedium!.copyWith(
                                      color: Colors.black.withOpacity(.5),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 6.h),
                                  AutoSizeText(
                                    // widget.bikeOrderModel.color,
                                    widget.vehicleTestDriveOrders.dealer
                                            ?.vehicleColor?.name ??
                                        '',
                                    style: theme.labelMedium!.copyWith(
                                      color: Colors.black.withOpacity(.5),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 6.h),
                                  /* AutoSizeText(
                                    widget.vehicleTestDriveOrders.dealer!
                                        .vehicleVariant!.price
                                        .toString(),
                                    style: theme.labelLarge!.copyWith(
                                      fontWeight: FontWeight.w600,
                                      color: AppTheme.primaryColor,
                                    ),
                                  ) */
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            if (widget.vehicleTestDriveOrders.order?.user != null) ...[
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.w,
                  vertical: 10.h,
                ),
                child: AutoSizeText(
                  'Customer Info',
                  style: theme.headlineMedium,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AutoSizeText(
                          'Name',
                          style: theme.labelMedium!.copyWith(
                            color: Colors.black.withOpacity(.5),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 6.h),
                        AutoSizeText(
                          'Email Id',
                          style: theme.labelMedium!.copyWith(
                            color: Colors.black.withOpacity(.5),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 6.h),
                        AutoSizeText(
                          'Contact Number',
                          style: theme.labelMedium!.copyWith(
                            color: Colors.black.withOpacity(.5),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 6.h),
                        AutoSizeText(
                          'Alternative Number',
                          style: theme.labelMedium!.copyWith(
                            color: Colors.black.withOpacity(.5),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 6.h),
                        AutoSizeText(
                          'Address',
                          style: theme.labelMedium!.copyWith(
                            color: Colors.black.withOpacity(.5),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 20.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            widget.vehicleTestDriveOrders.order?.user?.name ??
                                '',
                            maxLines: 1,
                            style: theme.labelMedium!.copyWith(
                              color: Colors.black.withOpacity(.5),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 6.h),
                          AutoSizeText(
                            widget.vehicleTestDriveOrders.order?.user?.email ??
                                '',
                            maxLines: 1,
                            style: theme.labelMedium!.copyWith(
                              color: Colors.black.withOpacity(.5),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 6.h),
                          AutoSizeText(
                            widget.vehicleTestDriveOrders.order?.user
                                    ?.phoneNumber ??
                                '',
                            maxLines: 1,
                            style: theme.labelMedium!.copyWith(
                              color: Colors.black.withOpacity(.5),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 6.h),
                          AutoSizeText(
                            widget.vehicleTestDriveOrders.order?.user
                                    ?.phoneNumber ??
                                '',
                            maxLines: 1,
                            style: theme.labelMedium!.copyWith(
                              color: Colors.black.withOpacity(.5),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 6.h),
                          AutoSizeText(
                            widget.vehicleTestDriveOrders.order?.user?.addresses
                                    ?.firstOrNull?.address ??
                                '',
                            maxLines: 1,
                            style: theme.labelMedium!.copyWith(
                              color: Colors.black.withOpacity(.5),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ] else
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.w,
                ),
                child: Text(
                  'Customer details not available',
                  style: theme.labelMedium!.copyWith(
                    color: AppTheme.red.withOpacity(.7),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            SizedBox(
              height: 20.h,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  if (vehicleTestDriveOrders.status == 'created')
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              showRejectionDialog();
                            },
                            child: Container(
                              height: 50.h,
                              width: 145.w,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.red),
                                borderRadius: BorderRadius.circular(30.r),
                              ),
                              child: Center(
                                child: AutoSizeText(
                                  'Reject',
                                  style: theme.headlineSmall!
                                      .copyWith(color: Colors.red),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              ordersPro.acceptTestDriveOrder(
                                vehicleTestDriveOrders.id,
                              );
                            },
                            child: Container(
                              height: 50.h,
                              width: 145.w,
                              decoration: BoxDecoration(
                                color: AppTheme.primaryColor,
                                borderRadius: BorderRadius.circular(30.r),
                              ),
                              child: Center(
                                child: AutoSizeText(
                                  'Accept',
                                  style: theme.headlineSmall!
                                      .copyWith(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (vehicleTestDriveOrders.status == 'accepted')
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Row(
                        children: [
                          AutoSizeText(
                            'Status',
                            style: theme.labelMedium!.copyWith(
                              color: Colors.black.withOpacity(.5),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: 100.w),
                          AutoSizeText(
                            'Accepted',
                            style: theme.labelMedium!.copyWith(
                              color: AppTheme.primaryColor,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (vehicleTestDriveOrders.status == 'rejected')
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: Row(
                            children: [
                              AutoSizeText(
                                'Status',
                                style: theme.labelMedium!.copyWith(
                                  color: Colors.black.withOpacity(.5),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(width: 100.w),
                              AutoSizeText(
                                'Rejected',
                                style: theme.labelMedium!.copyWith(
                                  color: AppTheme.red,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: Row(
                            children: [
                              AutoSizeText(
                                'Reason',
                                style: theme.labelMedium!.copyWith(
                                  color: Colors.black.withOpacity(.5),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(width: 93.w),
                              AutoSizeText(
                                rejectionReason,
                                style: theme.labelMedium!.copyWith(
                                  color: Colors.black.withOpacity(.5),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),

            /*       if (currentStatus == Status.pending)
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: AutoSizeText(
                    'Ready To Pick',
                    style: theme.headlineSmall!
                        .copyWith(color: AppTheme.primaryColor),
                  ),
                ),
              ), */
            if (vehicleTestDriveOrders.status == 'delivered')
              InkWell(
                onTap: () {},
                child: Center(
                  child: Container(
                    width: 300.w,
                    height: 55.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      border: Border.all(color: AppTheme.primaryColor),
                    ),
                    child: Center(
                      child: AutoSizeText(
                        'Download Invoice',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: AppTheme.primaryColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            SizedBox(height: 16.h),
          ],
        ),
      ),
    );
  }

  Future<void> showRejectionDialog() async {
    final theme = Theme.of(context).textTheme;
    final reasons = ['Out Of Stock', 'Location Too Long', 'Other'];

    var selectedReason = reasons[0];

    await showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.r),
          topRight: Radius.circular(24.r),
        ),
      ),
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Container(
              padding: EdgeInsets.symmetric(vertical: 6.h),
              height: 330.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24.r),
                  topRight: Radius.circular(24.r),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 10.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                      color: const Color(0xffe9e9e9),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                  SizedBox(
                    height: 26.h,
                  ),
                  AutoSizeText(
                    'Reasong For Rejection',
                    style: theme.headlineLarge,
                  ),
                  const SizedBox(height: 20),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemCount: reasons.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedReason = reasons[index];
                          });
                        },
                        child: ColoredBox(
                          color: selectedReason == reasons[index]
                              ? const Color(0xfffff4f4)
                              : Colors.transparent,
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 16.h),
                            child: AutoSizeText(
                              reasons[index],
                              textAlign: TextAlign.center,
                              style: theme.headlineSmall!.copyWith(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 16),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(24.r),
                    child: MaterialButton(
                      height: 50.h,
                      minWidth: 300.w,
                      color: const Color(0xffe36666),
                      onPressed: () {
                        AppRoutes.pop();
                        ref
                            .read(orderProvider(OrderFamily.purchaseOrders))
                            .rejectOrder(
                              id: vehicleTestDriveOrders.id,
                              reason: selectedReason,
                              orderType: 'testDrive',
                            );
                      },
                      child: AutoSizeText(
                        'Submit',
                        style:
                            theme.headlineSmall!.copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
