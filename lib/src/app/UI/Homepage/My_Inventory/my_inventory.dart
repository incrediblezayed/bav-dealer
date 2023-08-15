import 'package:dealerapp/src/utils/global_exports.dart';
import 'package:dealerapp/src/widgets/empty_widget.dart';
import 'package:dealerapp/src/widgets/k_inventory_bike_card.dart';
import 'package:iconsax/iconsax.dart';

class MyInventory extends StatefulWidget {
  const MyInventory({super.key});

  @override
  State<MyInventory> createState() => _MyInventoryState();
}

class _MyInventoryState extends State<MyInventory>
    with TickerProviderStateMixin {
  late final _tabController = TabController(length: 3, vsync: this);
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
          KInventoryBikeCard(),
          EmptyWidgt(title: 'Uh oh! You have no orders.'),
          EmptyWidgt(title: 'Uh oh! You have no orders.'),
        ],
      ),
    );
  }
}
