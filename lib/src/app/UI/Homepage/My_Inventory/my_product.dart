import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/utils/app_theme.dart';
import 'package:dealerapp/src/utils/extensions.dart';
import 'package:dealerapp/src/utils/log_colors.dart';
import 'package:dealerapp/src/widgets/default_pagination_scroll_callback.dart';
import 'package:dealerapp/src/widgets/k_inventory_product_card.dart';
import 'package:dealerapp/src/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyProduct extends ConsumerWidget {
  const MyProduct({required this.showSearch, super.key});
  final bool showSearch;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final inventoryPro = ref.watch(inventoryProvider);
    final data = inventoryPro.products?.where(
      (e) => !(inventoryPro.productDealers ?? []).any(
        (element) => element.variant.id == e.id,
      ),
    );
    return ColoredBox(
      color: AppTheme.textFieldFill,
      child: Column(
        children: [
          if (showSearch)
            Padding(
              padding: const EdgeInsets.all(8),
              child: TextField(
                onChanged: (v) {
                  inventoryPro.onSearchTextChanged(
                      onSearch: inventoryPro.getProducts);
                },
                controller: inventoryPro.inventorySearchController,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Search',
                ),
              ),
            ),
          Expanded(
            child: data == null
                ? const Center(child: LoadingWidget())
                : DefaultScrollPaginationCallback(
                    onLoadMore: () {
                      inventoryPro.getPaginatedProducts();
                    },
                    callbackCondition: (inventoryPro.products?.length ?? 0) <
                        inventoryPro.productsCount,
                    child: RefreshIndicator.adaptive(
                      onRefresh: () async {
                        await inventoryPro.getProducts();
                      },
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          index.log(
                            color: LogColors.green,
                            name: 'Index',
                          );
                          inventoryPro.vehiclesCount.log(
                            name: 'Total Product Count',
                          );

                          if (index >= data.length) {
                            // inventoryPro.getPaginatedProducts();
                            return const Center(
                              child: LoadingWidget(),
                            );
                          }
                          final product = data.elementAt(index);
                          return KInvetoryProductCard(
                            variant: product,
                          );
                          /*ListTile(
                    title: Text(product.name.toString()),
                    subtitle: Text(product.vehicle.toString()),
                    // Add more UI elements as needed
                  );*/
                        },
                      ),
                    )),
          ),
        ],
      ),
    );
  }
}
