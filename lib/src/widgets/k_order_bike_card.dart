import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/app/provider/order_provider.dart';
import 'package:dealerapp/src/app/repository/orders/graphql/__generated__/orders.data.gql.dart';
import 'package:dealerapp/src/utils/extensions.dart';
import 'package:dealerapp/src/utils/global_exports.dart';
import 'package:dealerapp/src/widgets/k_cached_network_image.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class KOrderBikeCard extends ConsumerStatefulWidget {
  ///
  const KOrderBikeCard({
    required this.vehiclePurchaseOrders,
    super.key,
  });
  final GVehicleOrdersData_vehicleOrders vehiclePurchaseOrders;

  @override
  ConsumerState<KOrderBikeCard> createState() => _KPurchaseOrderBikeCardState();
}

class _KPurchaseOrderBikeCardState extends ConsumerState<KOrderBikeCard> {
  GVehicleOrdersData_vehicleOrders get vehiclePurchaseOrders =>
      widget.vehiclePurchaseOrders;

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
                // height: 80.h,
                width: double.maxFinite,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 16.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ORDER ID #${widget.vehiclePurchaseOrders.id}',
                        style: theme.labelLarge!.copyWith(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: AppTheme.black,
                        ),
                      ),
                      SizedBox(height: 6.h),
                      Text(
                        widget.vehiclePurchaseOrders.createdAt.toDateTime!
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
              child: Text(
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
                        widget.vehiclePurchaseOrders.dealer!.vehicleColor!
                                .images?.firstOrNull?.image?.url ??
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
                        Text(
                          widget.vehiclePurchaseOrders.dealer!.vehicleVariant!
                              .name!,
                          style: theme.headlineMedium,
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Model',
                                  style: theme.labelMedium!.copyWith(
                                    color: Colors.black.withOpacity(.5),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 6.h),
                                Text(
                                  'Color',
                                  style: theme.labelMedium!.copyWith(
                                    color: Colors.black.withOpacity(.5),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 6.h),
                                Text(
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
                                  Text(
                                    widget.vehiclePurchaseOrders.dealer!
                                        .vehicleVariant!.name!,
                                    style: theme.labelMedium!.copyWith(
                                      color: Colors.black.withOpacity(.5),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 6.h),
                                  Text(
                                    // widget.bikeOrderModel.color,
                                    widget.vehiclePurchaseOrders.dealer
                                            ?.vehicleColor?.name ??
                                        '',
                                    style: theme.labelMedium!.copyWith(
                                      color: Colors.black.withOpacity(.5),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 6.h),
                                  /* Text(
                                    widget.vehiclePurchaseOrders.dealer!
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
            /*     Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
                vertical: 10.h,
              ),
              child: Text(
                'Customer Info',
                style: theme.headlineMedium,
              ),
            ), */
            /* Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                children: [
                  /* Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        style: theme.labelMedium!.copyWith(
                          color: Colors.black.withOpacity(.5),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 6.h),
                      Text(
                        'Email Id',
                        style: theme.labelMedium!.copyWith(
                          color: Colors.black.withOpacity(.5),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 6.h),
                      Text(
                        'Contact Number',
                        style: theme.labelMedium!.copyWith(
                          color: Colors.black.withOpacity(.5),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 6.h),
                      Text(
                        'Alternative Number',
                        style: theme.labelMedium!.copyWith(
                          color: Colors.black.withOpacity(.5),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 6.h),
                      Text(
                        'Address',
                        style: theme.labelMedium!.copyWith(
                          color: Colors.black.withOpacity(.5),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ) */
                  //SizedBox(width: 20.w),
                  /* Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.vehiclePurchaseOrders.order!.user!.name!,
                          style: theme.labelMedium!.copyWith(
                            color: Colors.black.withOpacity(.5),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 6.h),
                        Text(
                          widget.vehiclePurchaseOrders.order!.user!.email!,
                          style: theme.labelMedium!.copyWith(
                            color: Colors.black.withOpacity(.5),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 6.h),
                        Text(
                          widget
                              .vehiclePurchaseOrders.order!.user!.phoneNumber!,
                          style: theme.labelMedium!.copyWith(
                            color: Colors.black.withOpacity(.5),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 6.h),
                        Text(
                          widget
                              .vehiclePurchaseOrders.order!.user!.phoneNumber!,
                          style: theme.labelMedium!.copyWith(
                            color: Colors.black.withOpacity(.5),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 6.h),
                        Text(
                          widget.vehiclePurchaseOrders.order!.user!.addresses!
                                  .firstOrNull?.address ??
                              '',
                          style: theme.labelMedium!.copyWith(
                            color: Colors.black.withOpacity(.5),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ) */
                ],
              ),
            ) */
            SizedBox(
              height: 20.h,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  if (vehiclePurchaseOrders.status == 'created')
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
                                child: Text(
                                  'Reject',
                                  style: theme.headlineSmall!
                                      .copyWith(color: Colors.red),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              ordersPro.acceptOrder(vehiclePurchaseOrders.id);
                            },
                            child: Container(
                              height: 50.h,
                              width: 145.w,
                              decoration: BoxDecoration(
                                color: AppTheme.primaryColor,
                                borderRadius: BorderRadius.circular(30.r),
                              ),
                              child: Center(
                                child: Text(
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
                  if (vehiclePurchaseOrders.status == 'accepted')
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Row(
                        children: [
                          Text(
                            'Status',
                            style: theme.labelMedium!.copyWith(
                              color: Colors.black.withOpacity(.5),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: 100.w),
                          Text(
                            'Accepted',
                            style: theme.labelMedium!.copyWith(
                              color: AppTheme.primaryColor,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (vehiclePurchaseOrders.status == 'rejected')
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: Row(
                            children: [
                              Text(
                                'Status',
                                style: theme.labelMedium!.copyWith(
                                  color: Colors.black.withOpacity(.5),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(width: 100.w),
                              Text(
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
                              Text(
                                'Reason',
                                style: theme.labelMedium!.copyWith(
                                  color: Colors.black.withOpacity(.5),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(width: 93.w),
                              Text(
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

/*             if (vehiclePurchaseOrders.status == 'created')
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Ready To Pick',
                    style: theme.headlineSmall!
                        .copyWith(color: AppTheme.primaryColor),
                  ),
                ),
              ), */
            if (vehiclePurchaseOrders.status == 'delivered')
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
                      child: Text(
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
                  Text(
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
                            child: Text(
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
                              vehiclePurchaseOrders.id,
                              selectedReason,
                              true,
                            );
                      },
                      child: Text(
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
