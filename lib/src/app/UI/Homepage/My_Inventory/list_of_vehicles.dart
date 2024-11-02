import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/utils/app_theme.dart';
import 'package:dealerapp/src/widgets/default_pagination_scroll_callback.dart';
import 'package:dealerapp/src/widgets/empty_widget.dart';
import 'package:dealerapp/src/widgets/k_inventory_bike_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ListOfVehicles extends ConsumerWidget {
  const ListOfVehicles({required this.showSearch, super.key});
  final bool showSearch;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final inventoryPro = ref.watch(inventoryProvider);
    final data = inventoryPro.vehicles?.where(
      (element) => element.sortedColors
          .where(
            (p0) => !(inventoryPro.vehicleDealers ?? [])
                .map((e) => e.vehicleColor?.id)
                .contains(p0.id),
          )
          .isNotEmpty,
    );
    return ColoredBox(
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
                      onSearch: inventoryPro.getVehicles);
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
                ? const Center(
                    child: CircularProgressIndicator.adaptive(),
                  )
                : data.isEmpty
                    ? const EmptyWidget(title: 'No Vehicles Found')
                    : DefaultScrollPaginationCallback(
                        onLoadMore: () async {
                          await inventoryPro.getPaginatedVehicles();
                        },
                        callbackCondition: inventoryPro.vehicles!.length <
                            inventoryPro.vehiclesCount,
                        child: RefreshIndicator.adaptive(
                          onRefresh: () async {
                            await inventoryPro.getVehicles();
                          },
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: data.length +
                                (inventoryPro.vehicles!.length <
                                        inventoryPro.vehiclesCount
                                    ? 1
                                    : 0),
                            itemBuilder: (context, index) {
                              if (index >= data.length) {
                                return const Center(
                                  child: CircularProgressIndicator.adaptive(),
                                );
                              }
                              final item = data.elementAt(index);
                              return KInventoryBikeCard(
                                variant: item,
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
