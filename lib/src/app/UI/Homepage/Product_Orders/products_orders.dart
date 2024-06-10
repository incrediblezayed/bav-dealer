import 'package:dealerapp/src/app/UI/Homepage/Product_Orders/product_order_list_page.dart';
import 'package:dealerapp/src/app/UI/Homepage/Purchase_Orders/orders_list_page.dart';
import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/app/provider/order_provider.dart';
import 'package:dealerapp/src/utils/global_exports.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';

class ProductOrders extends ConsumerStatefulWidget {
  const ProductOrders({super.key});

  @override
  _ProductOrdersState createState() => _ProductOrdersState();
}

class _ProductOrdersState extends ConsumerState<ProductOrders>
  with TickerProviderStateMixin {
  late final TabController _tabController =
  TabController(length: 4, vsync: this);
  void onTabChanged(int index, OrdersProvider provider) {
    if (index == 0) {
      provider.getProductPendingOrders();
    } else if (index == 1) {
      provider.getProductAcceptedOrders();
    } else if (index == 2) {
      provider.getProductRejectedOrders();
    } else {
      provider.getProductDeliveredOrders();
    }
  }
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    final orderPro = ref.watch(orderProvider(OrderFamily.productOrders));
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
          'Product Orders',
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
          orderPro.productpendingOrders,
          orderPro.productacceptedOrders,
          orderPro.productrejectedOrders,
          orderPro.productdeliveredOrders,
        ]
            .map(
              (e) => ProductOrderListPage(
            data: e,
            orderPro: OrdersProvider(),
          ),
        )
            .toList(),


      ),
    );
  }
}