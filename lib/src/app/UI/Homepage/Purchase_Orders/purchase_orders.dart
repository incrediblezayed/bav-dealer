import 'package:dealerapp/src/app/UI/Homepage/Purchase_Orders/orders_list_page.dart';
import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/app/provider/order_provider.dart';
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

  void onTabChanged(int index, OrdersProvider provider) {
    if (index == 0) {
      provider.getPendingOrders();
    } else if (index == 1) {
      provider.getAcceptedOrders();
    } else if (index == 2) {
      provider.getRejectedOrders();
    } else {
      provider.getDeliveredOrders();
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    final orderPro = ref.watch(orderProvider(OrderFamily.purchaseOrders));
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppTheme.scaffoldBgColor,
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
          onTap: (index) {
            onTabChanged(index, orderPro);
          },
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
          orderPro.pendingOrders,
          orderPro.acceptedOrders,
          orderPro.rejectedOrders,
          orderPro.deliveredOrders,
        ]
            .map(
              (e) => OrdersListPage(
                data: e,
                orderPro: orderPro,
              ),
            )
            .toList(),
      ),
    );
  }
}
