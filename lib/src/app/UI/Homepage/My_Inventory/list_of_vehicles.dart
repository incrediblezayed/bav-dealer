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
    return Container(
      // padding: const EdgeInsets.all(1),
      color: AppTheme.textFieldFill,
      child: RefreshIndicator(
        onRefresh: () async {
          await inventoryPro.getVehicles();
        },
        child: ListView(
          shrinkWrap: true,
          children: inventoryPro.vehicles
              .where((element) =>
                  element.colors!
                      .where((p0) => !inventoryPro.vehicleDealers
                          .map((e) => e.vehicleColor!.id)
                          .contains(p0.id))
                      .length >
                  0)
              .map(
                (e) => KInventoryBikeCard(
                  variants: e,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
