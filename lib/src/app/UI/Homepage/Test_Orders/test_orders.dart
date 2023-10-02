import 'package:dealerapp/src/app/UI/Homepage/Test_Orders/test_orders_list_page.dart';
import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/app/provider/order_provider.dart';
import 'package:dealerapp/src/utils/app_routes.dart';
import 'package:dealerapp/src/utils/app_theme.dart';
import 'package:dealerapp/src/widgets/empty_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';

///Test Orders Class
class TestOrders extends ConsumerStatefulWidget {
  ///Constructor
  const TestOrders({super.key});

  @override
  ConsumerState<TestOrders> createState() => _PurchaseOrdersState();
}

class _PurchaseOrdersState extends ConsumerState<TestOrders>
    with TickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 4, vsync: this);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    final orderPro = ref.watch(orderProvider(OrderFamily.testDriveOrders));
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
          'Test Orders',
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
            orderPro.testDrivePendingOrders,
            orderPro.testDriveDeliveredOrders,
            orderPro.testDriveRejectedOrders,
            orderPro.testDriveDeliveredOrders,
          ].map((e) => TestOrdersListPage(data: e)).toList()),
    );
  }
}
