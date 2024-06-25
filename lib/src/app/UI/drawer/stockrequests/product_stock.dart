import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dealerapp/src/app/provider/app_provider.dart'; // Assuming this imports your stockProvider and related classes
import 'package:dealerapp/src/utils/app_theme.dart';
import 'package:dealerapp/src/utils/extensions.dart';
import 'package:dealerapp/src/utils/log_colors.dart';
import 'package:dealerapp/src/widgets/k_stock_product_card.dart';

class ProductStock extends ConsumerWidget {
  const ProductStock({required this.showSearch, Key? key}) : super(key: key);
  final bool showSearch;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stockPro = ref.watch(stockProvider); // Access the StockProvider instance

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
                await stockPro.getProductStock(); // Refresh products data
              },
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: data.length,
                itemBuilder: (context, index) {
                  index.log(
                    color: LogColors.green,
                    name: 'Index',
                  );

                  if (index >= data.length) {
                    return const Center(
                      child: CircularProgressIndicator.adaptive(),
                    );
                  }

                  final product = data.elementAt(index); // Retrieve individual product

                  return KStockProductCard(
                    product: product, // Pass individual product to card widget
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
