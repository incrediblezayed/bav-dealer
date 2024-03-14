import 'package:dealerapp/src/app/UI/Homepage/My_Inventory/list_of_vehicles.dart';
import 'package:dealerapp/src/app/UI/Homepage/My_Inventory/my_stock.dart';
import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/utils/global_exports.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../widgets/empty_widget.dart';

class MyInventory extends ConsumerStatefulWidget {
  const MyInventory({super.key});

  @override
  ConsumerState<MyInventory> createState() => _MyInventoryState();
}

class _MyInventoryState extends ConsumerState<MyInventory>
    with TickerProviderStateMixin {
  late final _tabController = TabController(length: 3, vsync: this);
  @override
  Widget build(BuildContext context) {
    print(cacheProvider.getDealerId());
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
        children: const [
          ListOfVehicles(),
          MyStockPage(),
          EmptyWidget(title: 'Uh oh! You have no products.'),
        ],
      ),
    );
  }
}
