import 'package:dealerapp/src/app/provider/app_provider.dart'; // Assuming this imports your stockProvider and related classes
import 'package:dealerapp/src/utils/app_theme.dart';
import 'package:dealerapp/src/widgets/empty_widget.dart';
import 'package:dealerapp/src/widgets/k_stock_Vehicle_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class VehicleStock extends ConsumerWidget {
  const VehicleStock({
    required this.showSearch,
    super.key,
  });

  final bool showSearch;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stockPro = ref.watch(stockProvider);
    final data = stockPro.vehicles;

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
                  stockPro.onSearchTextChanged(isProduct: false);
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
                    if ((stockPro.vehicles?.length ?? 0) <
                        stockPro.vehicleCount) {
                      stockPro.getMoreVehicles();
                    }
                  }
                }
                return true;
              },
              child: RefreshIndicator.adaptive(
                onRefresh: () async {
                  await stockPro.getVehicleStock();
                },
                child: data == null
                    ? const Center(
                        child: EmptyWidget(
                            title: 'No Vehicle Stock Request Found'),
                      )
                    : data.isEmpty
                        ? const EmptyWidget(
                            title: 'No Vehicle Stock Request Found')
                        : ListView.builder(
                            shrinkWrap: true,
                            itemCount: data.length +
                                (stockPro.vehicleCount > data.length ? 1 : 0),
                            itemBuilder: (context, index) {
                              if (index >= data.length) {
                                return const Center(
                                  child: CircularProgressIndicator.adaptive(),
                                );
                              }

                              final vehicle = data.elementAt(index);

                              return KStockVehicleCard(
                                variant: vehicle,
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
