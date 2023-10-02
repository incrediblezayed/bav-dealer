import 'package:dealerapp/src/app/UI/Homepage/Purchase_Orders/accepted_orders_page.dart';
import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/utils/global_exports.dart';
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
    final purchaseOrderPro = ref.watch(purchaseOrderProvider);
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
          purchaseOrderPro.pendingOrders,
          purchaseOrderPro.acceptedOrders,
          purchaseOrderPro.rejectedOrders,
          purchaseOrderPro.deliveredOrders
        ].map((e) => OrdersListPage(data: e)).toList(),
      ),
    );
  }
}
