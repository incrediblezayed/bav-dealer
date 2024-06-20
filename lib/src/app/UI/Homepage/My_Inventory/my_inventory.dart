import 'package:dealerapp/src/app/UI/Homepage/My_Inventory/list_of_vehicles.dart';
import 'package:dealerapp/src/app/UI/Homepage/My_Inventory/my_stock.dart';
import 'package:dealerapp/src/app/UI/Homepage/My_Inventory/my_testdrive_stock.dart';
import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/utils/global_exports.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';

import 'my_product.dart';

class MyInventory extends ConsumerStatefulWidget {
  const MyInventory({super.key});

  @override
  ConsumerState<MyInventory> createState() => _MyInventoryState();
}

class _MyInventoryState extends ConsumerState<MyInventory>
    with TickerProviderStateMixin {
  late final _tabController = TabController(length: 5, vsync: this);

  bool showSearch = false;

  @override
  void initState() {
    _tabController.addListener(tabListener);
    super.initState();
  }

  void tabListener() async {
    final inventoryPro = ref.read(inventoryProvider);
    if (!_tabController.indexIsChanging) {
      Map<int, Future<void>> tabFunctions = {
        0: inventoryPro.getVehicles(),
        1: inventoryPro.getStocks(),
        2: inventoryPro.getTestDriveStock(),
        3: inventoryPro.getProducts(),
        4: inventoryPro.getProductStocks(),
      };
      if (tabFunctions.containsKey(_tabController.index)) {
        await tabFunctions[_tabController.index];
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
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
          'Inventory',
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
          isScrollable: true,
          tabs: const [
            Tab(
              text: 'List Of Vehicle',
            ),
            Tab(
              text: 'Vehicle Stock',
            ),
            Tab(
              text: 'Test Drive Stock',
            ),
            Tab(
              text: 'Products',
            ),
            Tab(
              text: 'Product Stock',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ListOfVehicles(
            showSearch: showSearch,
          ),
          MyStockPage(
            showSearch: showSearch,
          ),
          MyTestDriveStockPage(showSearch: showSearch),
          MyProduct(
            showSearch: showSearch,
          ),
          MyStockPage(
            showSearch: showSearch,
            product: true,
          ),
          //const EmptyWidget(title: 'Uh oh! You have no products.'),
        ],
      ),
    );
  }
}
