import 'package:dealerapp/src/app/UI/Homepage/My_Inventory/widgets/my_stock_card.dart';
import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/utils/global_exports.dart';
import 'package:dealerapp/src/widgets/empty_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyTestDriveStockPage extends ConsumerWidget {
  const MyTestDriveStockPage({required this.showSearch, super.key});
  final bool showSearch;
  static const String routeName = 'MyStockPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final inventoryPro = ref.watch(inventoryProvider);
    return Container(
      padding: const EdgeInsets.all(6),
      color: AppTheme.textFieldFill,
      child: Column(
        children: [
          if (showSearch)
            Padding(
              padding: const EdgeInsets.all(8),
              child: TextField(
                controller: inventoryPro.myStockSearchController,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Search',
                ),
              ),
            ),
          Expanded(
            child: RefreshIndicator(
              onRefresh: () async {
                await inventoryPro.getTestDriveStock();
              },
              child: inventoryPro.testDriveStock == null
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : inventoryPro.vehicleDealers.isEmpty
                      ? const EmptyWidget(title: 'Uh oh! You have no orders.')
                      : ListView.builder(
                          itemCount: inventoryPro.testDriveStock!.length,
                          itemBuilder: (context, index) {
                            return MyStockCard(
                              vehicleDealers:
                                  inventoryPro.testDriveStock![index],
                              index: index,
                            );
                          },
                        ),
            ),
          ),
        ],
      ),
    );
  }
}
