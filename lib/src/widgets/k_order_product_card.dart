import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/app/provider/order_provider.dart';
import 'package:dealerapp/src/app/repository/orders/graphql/__generated__/orders.data.gql.dart';
import 'package:dealerapp/src/utils/extensions.dart';
import 'package:dealerapp/src/utils/global_exports.dart';
import 'package:dealerapp/src/widgets/k_cached_network_image.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class KOrderProductCard extends ConsumerStatefulWidget {
  ///
  const KOrderProductCard({
    required this.productPurchaseOrders,
    required this.onOrderAccepted, // Add this callback
    super.key,
  });
  final GProductOrdersData_productOrders productPurchaseOrders;
  final VoidCallback onOrderAccepted; // Define the callback

  @override
  ConsumerState<KOrderProductCard> createState() =>
      _KPurchaseOrderProductCardState();
}

class _KPurchaseOrderProductCardState extends ConsumerState<KOrderProductCard> {
  GProductOrdersData_productOrders get productPurchaseOrders =>
      widget.productPurchaseOrders;

  String rejectionReason = '';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    final ordersPro = ref.read(orderProvider(OrderFamily.productOrders));
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
                      Text(
                        'ORDER ID #${widget.productPurchaseOrders.id}' ?? '',
                        style: theme.labelLarge!.copyWith(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: AppTheme.black,
                        ),
                      ),
                      SizedBox(height: 6.h),
                      Text(
                        widget.productPurchaseOrders.createdAt.toDateTime!
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
                        widget.productPurchaseOrders.dealer?.productVariant
                            ?.images?.first.image?.url,
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
                          widget.productPurchaseOrders.dealer?.productVariant
                                  ?.name ??
                              '',
                          style: theme.labelMedium?.copyWith(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
                                color: AppTheme.black,
                              ) ??
                              const TextStyle(),
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
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
                                    widget.productPurchaseOrders.price
                                            .toString() ??
                                        '',
                                    style: theme.labelLarge!.copyWith(
                                      fontWeight: FontWeight.w600,
                                      color: AppTheme.primaryColor,
                                    ),
                                  )
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
            SizedBox(
              height: 20.h,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  if (productPurchaseOrders.status == 'created')
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
                              ordersPro
                                  .acceptProductOrder(productPurchaseOrders.id)
                                  .then((_) {
                                widget
                                    .onOrderAccepted(); // Call the refresh callback
                              });
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
                  if (productPurchaseOrders.status == 'accepted')
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
                  if (productPurchaseOrders.status == 'rejected')
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
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
      ),
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 16.w),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Text(
              'Reason For Rejection',
              style: theme.headlineMedium?.copyWith(
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20.h),
            ListView.builder(
              shrinkWrap: true,
              itemCount: reasons.length,
              itemBuilder: (context, index) {
                return RadioListTile(
                  title: Text(reasons[index]),
                  value: reasons[index],
                  groupValue: selectedReason,
                  onChanged: (value) {
                    setState(() {
                      selectedReason = value.toString();
                    });
                  },
                );
              },
            ),
            SizedBox(height: 20.h),
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
                        id: productPurchaseOrders.id,
                        reason: selectedReason,
                        orderType: 'product',
                      );
                },
                child: Text(
                  'Submit',
                  style: theme.headlineSmall!.copyWith(color: Colors.white),
                ),
              ),
            )
            /* TextButton(
                onPressed: () {
                  setState(() {
                    rejectionReason = selectedReason;
                  });
                  Navigator.pop(context);
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                    vertical: 10.h,
                  ),
                  backgroundColor: AppTheme.primaryColor,
                ),
                child: Text(
                  'Reject Order',
                  style: theme.headlineMedium?.copyWith(
                    fontSize: 14.sp,
                    color: Colors.white
                  const SizedBox(height: 16), */
            /* ClipRRect(
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
                              id: productPurchaseOrders.id,
                              reason: selectedReason,
                              orderType: 'product',
                            );
                      },
                      child: Text(
                        'Submit',
                        style:
                            theme.headlineSmall!.copyWith(color: Colors.white),
                      ),
                    ),
                  ) */
            ,
          ]),
        );
      },
    );
  }
}
