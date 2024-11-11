import 'package:dealerapp/src/app/UI/Homepage/My_Inventory/widgets/my_stock_card.dart';
import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/utils/global_exports.dart';
import 'package:dealerapp/src/widgets/default_pagination_scroll_callback.dart';
import 'package:dealerapp/src/widgets/empty_widget.dart';
import 'package:dealerapp/src/widgets/loading_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyStockPage extends ConsumerWidget {
  const MyStockPage(
      {required this.showSearch, this.product = false, super.key});

  final bool showSearch, product;
  static const String routeName = 'MyStockPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final inventoryPro = ref.watch(inventoryProvider);
    final data =
        product ? inventoryPro.productDealers : inventoryPro.vehicleDealers;
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
                      onSearch: product
                          ? inventoryPro.getProductStocks
                          : inventoryPro.getStocks);
                },
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Search',
                ),
              ),
            ),
          Expanded(
            child: data == null
                ? const LoadingWidget()
                : DefaultScrollPaginationCallback(
                    onLoadMore: () async {
                      if (product) {
                        await inventoryPro.getMoreProductStock();
                      } else {
                        await inventoryPro.getMoreStock();
                      }
                    },
                    callbackCondition: data.length <
                        (product
                            ? inventoryPro.productDealersCount
                            : inventoryPro.vehicleStockCount),
                    child: RefreshIndicator.adaptive(
                      onRefresh: () async {
                        if (product) {
                          await inventoryPro.getProductStocks();
                        } else {
                          await inventoryPro.getStocks();
                        }
                      },
                      child: data.isEmpty
                          ? const EmptyWidget(
                              title: 'Uh oh! You have no stock.')
                          : ListView.builder(
                              itemCount: data.length +
                                  (data.length <
                                          (product
                                              ? inventoryPro.productDealersCount
                                              : inventoryPro.vehicleStockCount)
                                      ? 1
                                      : 0),
                              itemBuilder: (context, index) {
                                if (index >= data.length) {
                                  return const Center(
                                    child: LoadingWidget(),
                                  );
                                }
                                return MyStockCard(
                                  dealerStock: data[index],
                                  index: index,
                                  product: product,
                                );
                              },
                            ),
                    )),
          ),
        ],
      ),
    );
  }
}
