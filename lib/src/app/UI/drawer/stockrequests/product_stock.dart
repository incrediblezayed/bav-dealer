import 'package:dealerapp/src/app/provider/app_provider.dart'; // Assuming this imports your stockProvider and related classes
import 'package:dealerapp/src/utils/app_theme.dart';
import 'package:dealerapp/src/widgets/empty_widget.dart';
import 'package:dealerapp/src/widgets/k_stock_Vehicle_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductStock extends ConsumerWidget {
  const ProductStock({required this.showSearch, super.key});
  final bool showSearch;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stockPro = ref.watch(stockProvider);

    // Retrieve products data from StockProvider
    final data = stockPro.products;
    return ColoredBox(
      color: AppTheme.textFieldFill,
      child: Column(
        children: [
          if (showSearch)
            Padding(
              padding: const EdgeInsets.all(8),
              child: TextField(
                controller: stockPro.searchController,
                onChanged: (value) {
                  stockPro.onSearchTextChanged(isProduct: true);
                },
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Search',
                ),
              ),
            ),
          Expanded(
            child: NotificationListener<ScrollNotification>(
              onNotification: (notification) {
                if (notification is ScrollEndNotification) {
                  if (notification.metrics.pixels >
                      (notification.metrics.maxScrollExtent * 0.8)) {
                    if ((stockPro.products?.length ?? 0) <
                        stockPro.productCount) {
                      stockPro.getMoreProducts();
                    }
                  }
                }
                return true;
              },
              child: RefreshIndicator(
                onRefresh: () async {
                  await stockPro.getProductStock(); // Refresh products data
                },
                child: data == null
                    ? const Center(
                        child: EmptyWidget(title: 'No Product Request Found'),
                      )
                    : ListView.builder(
                        shrinkWrap: true,
                        itemCount: data.length +
                            (stockPro.productCount > data.length ? 1 : 0),
                        itemBuilder: (context, index) {
                          if (index >= data.length) {
                            return const Center(
                              child: CircularProgressIndicator.adaptive(),
                            );
                          }
                          final product = data.elementAt(index);
                          return KStockVehicleCard(
                            variant: product,
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
