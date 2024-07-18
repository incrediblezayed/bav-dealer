import 'package:dealerapp/src/app/UI/Homepage/My_Inventory/widgets/my_stock_card.dart';
import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/utils/global_exports.dart';
import 'package:dealerapp/src/widgets/default_pagination_scroll_callback.dart';
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
                controller: inventoryPro.inventorySearchController,
                onChanged: (v) {
                  inventoryPro.onSearchTextChanged(
                      onSearch: inventoryPro.getTestDriveStock);
                },
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Search',
                ),
              ),
            ),
          Expanded(
            child: DefaultScrollPaginationCallback(
              callbackCondition: (inventoryPro.testDriveStock?.length ?? 0) <
                  inventoryPro.totalTestDriveCount,
              onLoadMore: () {
                inventoryPro.getMoreTestDriveStock();
              },
              child: RefreshIndicator.adaptive(
                onRefresh: () async {
                  await inventoryPro.getTestDriveStock();
                },
                child: inventoryPro.testDriveStock == null
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : inventoryPro.testDriveStock!.isEmpty
                        ? const EmptyWidget(
                            title: 'Uh oh! You have no test drive stock.')
                        : ListView.builder(
                            itemCount: inventoryPro.testDriveStock!.length +
                                (inventoryPro.totalTestDriveCount >
                                        inventoryPro.testDriveStock!.length
                                    ? 1
                                    : 0),
                            itemBuilder: (context, index) {
                              if (index >=
                                  inventoryPro.testDriveStock!.length) {
                                return const Center(
                                    child:
                                        CircularProgressIndicator.adaptive());
                              }
                              return MyStockCard(
                                dealerStock:
                                    inventoryPro.testDriveStock![index],
                                index: index,
                              );
                            },
                          ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
