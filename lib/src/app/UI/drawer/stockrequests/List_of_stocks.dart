import 'package:dealerapp/src/app/UI/drawer/stockrequests/product_stock.dart';
import 'package:dealerapp/src/app/UI/drawer/stockrequests/vehicle_stock.dart';
import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/utils/global_exports.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';

class StockRequests extends ConsumerStatefulWidget {
  const StockRequests({super.key});

  @override
  ConsumerState<StockRequests> createState() => _StockRequestsState();
}

class _StockRequestsState extends ConsumerState<StockRequests>
    with TickerProviderStateMixin {
  late final _tabController = TabController(length: 2, vsync: this);

  bool showSearch = false;

  @override
  void initState() {
    ref.read(stockProvider.notifier).init();
    super.initState();
  }

  void onTabChanged(int index) {
    if (index == 0) {
      ref.read(stockProvider.notifier).getProductStock();
    } else {
      ref.read(stockProvider.notifier).getVehicleStock();
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
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
          'Stock Requests',
          style: theme.headlineLarge,
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                showSearch = !showSearch;
              });
            },
            icon: Icon(showSearch ? Icons.close : Icons.search),
          ),
        ],
        bottom: TabBar(
          indicatorColor: AppTheme.primaryColor,
          labelColor: AppTheme.primaryColor,
          unselectedLabelColor: Colors.grey,
          controller: _tabController,
          tabs: const [
            Tab(
              text: 'Product Stock',
            ),
            Tab(
              text: 'Vehicle Stock',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ProductStock(
            showSearch: showSearch,
          ),
          VehicleStock(
            showSearch: showSearch,
          ),
          //const EmptyWidget(title: 'Uh oh! You have no products.'),
        ],
      ),
    );
  }
}
