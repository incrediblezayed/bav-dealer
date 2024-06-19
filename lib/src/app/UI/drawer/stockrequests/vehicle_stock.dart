import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/utils/app_theme.dart';
import 'package:dealerapp/src/utils/extensions.dart';
import 'package:dealerapp/src/utils/log_colors.dart';
import 'package:dealerapp/src/widgets/k_inventory_product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class VehicleStock extends ConsumerWidget {
  const VehicleStock({required this.showSearch, super.key});
  final bool showSearch;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final inventoryPro = ref.watch(inventoryProvider);
    final data = inventoryPro.products;
    return ColoredBox(
      color: AppTheme.textFieldFill,
      child: Column(
        children: [
          if (showSearch)
            Padding(
              padding: const EdgeInsets.all(8),
              child: TextField(
                controller: inventoryPro.productSearchController,
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
                  inventoryPro.count.log(
                    name: 'Total Product Count',
                  );

                  if (index >= data.length) {
                    inventoryPro.getPaginatedProducts();
                    return const Center(
                      child: CircularProgressIndicator.adaptive(),
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
                /*itemBuilder: (context, index) {
                  index.log(
                    color: LogColors.green,
                    name: 'Index',
                  );
                  inventoryPro.count.log(
                    name: 'Total Product Count',
                  );

                  if (index >= inventoryPro.products.length) {
                    inventoryPro.getPaginatedProducts();
                    return const Center(
                      child: CircularProgressIndicator.adaptive(),
                    );
                  }
                 log('${data.elementAt(index)}');
                  final item = data.elementAt(index);
                  return KInvetoryProductCard( variant: item,

                  );
                  */ /*KInventoryBikeCard(
                    variant: item,
                  );*/ /*
                },*/
              ),
            ),
          ),
        ],
      ),
    );
  }
}
