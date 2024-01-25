import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/utils/app_theme.dart';
import 'package:dealerapp/src/widgets/k_inventory_bike_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ListOfVehicles extends ConsumerWidget {
  const ListOfVehicles({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final inventoryPro = ref.watch(inventoryProvider);
    final data = inventoryPro.vehicles.where(
      (element) => element.colors
          .where(
            (p0) => !inventoryPro.vehicleDealers
                .map((e) => e.vehicleColor!.id)
                .contains(p0.id),
          )
          .isNotEmpty,
    );
    return ColoredBox(
      // padding: const EdgeInsets.all(1),
      color: AppTheme.textFieldFill,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextField(
              controller: inventoryPro.inventorySearchController,
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
                await inventoryPro.getVehicles();
              },
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: data.length,
                itemBuilder: (context, index) {
                  final item = data.elementAt(index);
                  return KInventoryBikeCard(
                    variant: item,
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
