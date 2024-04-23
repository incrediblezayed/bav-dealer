import 'package:dealerapp/src/app/UI/Homepage/My_Inventory/list_of_vehicles.dart';
import 'package:dealerapp/src/app/UI/Homepage/My_Inventory/my_stock.dart';
import 'package:dealerapp/src/utils/global_exports.dart';
import 'package:dealerapp/src/widgets/empty_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';

class MyInventory extends ConsumerStatefulWidget {
  const MyInventory({super.key});

  @override
  ConsumerState<MyInventory> createState() => _MyInventoryState();
}

class _MyInventoryState extends ConsumerState<MyInventory>
    with TickerProviderStateMixin {
  late final _tabController = TabController(length: 3, vsync: this);

  bool showSearch = false;

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
          tabs: const [
            Tab(
              text: 'List Of Vehicle',
            ),
            Tab(
              text: 'My Stock',
            ),
            Tab(
              text: 'Products',
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
          const EmptyWidget(title: 'Uh oh! You have no products.'),
        ],
      ),
    );
  }
}
