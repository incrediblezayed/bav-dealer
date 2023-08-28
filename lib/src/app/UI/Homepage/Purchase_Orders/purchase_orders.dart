import 'package:dealerapp/src/app/model/bike_order_model.dart';
import 'package:dealerapp/src/utils/global_exports.dart';
import 'package:dealerapp/src/widgets/empty_widget.dart';
import 'package:dealerapp/src/widgets/k_purchase_order_bike_card.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';

class PurchaseOrders extends ConsumerStatefulWidget {
  const PurchaseOrders({super.key});

  @override
  ConsumerState<PurchaseOrders> createState() => _PurchaseOrdersState();
}

class _PurchaseOrdersState extends ConsumerState<PurchaseOrders>
    with TickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 4, vsync: this);
  /*  Status currentStatus = Status.pending;
  String rejectionReason = '';

  void updateStatus(Status status, {String reason = ''}) {
    setState(() {
      currentStatus = status;
      if (status == Status.rejected) {
        rejectionReason = reason;
      }
    });

    _tabController.animateTo(status == Status.accepted ? 1 : 2);
  } */

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppTheme.scaffoldBgColor,
        // onTapLeading: () {
        //   // dashboardPro.changePage(0);
        // },

        leading: GestureDetector(
          onTap: () {
            AppRoutes.pop();
          },
          child: const Icon(
            Iconsax.arrow_left,
            color: AppTheme.textColor,
          ),
        ),
        title: Text(
          'Purchase Orders',
          style: theme.headlineLarge,
        ),
        bottom: TabBar(
          indicatorColor: AppTheme.primaryColor,
          labelColor: AppTheme.primaryColor,
          unselectedLabelColor: Colors.grey,
          controller: _tabController,
          tabs: const [
            Tab(
              text: 'Pending',
            ),
            Tab(
              text: 'Accepted',
            ),
            Tab(
              text: 'Rejected',
            ),
            Tab(
              text: 'Delivered',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          KPurchaseOrderBikeCard(
            bikeOrderModel: BikeOrderModel(
              currentStatus: Status.accepted,
              orderID: 'orderID',
              dateTime: DateTime(2023, 08, 14),
              vehicleName: 'vehicleName',
              image: AppImages.bike,
              model: 'model',
              color: 'color',
              price: 'price',
              customerName: 'customerName',
              customerEmail: 'customerEmail',
              customerContact: 'customerContact',
              customerAlternateContact: 'customerAlternateContact',
              customerAddress: 'customerAddress',
            ),
          ),
          // EmptyWidgt(title: 'Uh oh! You have no orders.'),

          /* if (currentStatus == Status.accepted)
            KOrderBikeCard(
              bikeOrderModel: BikeOrderModel(
                currentStatus: Status.accepted,
                orderID: 'orderID',
                dateTime: DateTime(2023, 08, 14),
                vehicleName: 'vehicleName',
                image: AppImages.bike,
                model: 'model',
                color: 'color',
                price: 'price',
                customerName: 'customerName',
                customerEmail: 'customerEmail',
                customerContact: 'customerContact',
                customerAlternateContact: 'customerAlternateContact',
                customerAddress: 'customerAddress',
              ),
            ), */

          /* if (currentStatus == Status.rejected)
            KOrderBikeCard(
              bikeOrderModel: BikeOrderModel(
                currentStatus: Status.accepted,
                orderID: 'orderID',
                dateTime: DateTime(2023, 08, 14),
                vehicleName: 'vehicleName',
                image: AppImages.bike,
                model: 'model',
                color: 'color',
                price: 'price',
                customerName: 'customerName',
                customerEmail: 'customerEmail',
                customerContact: 'customerContact',
                customerAlternateContact: 'customerAlternateContact',
                customerAddress: 'customerAddress',
              ),
            ), */
          const EmptyWidgt(
            title: 'Uh oh! You have no orders.',
          ),
          const EmptyWidgt(
            title: 'Uh oh! You have no orders.',
          ),

          const EmptyWidgt(
            title: 'Uh oh! You have no orders.',
          ), // EmptyWidgt(title: 'Uh oh! You have no orders.'),
        ],
      ),
    );
  }
}
