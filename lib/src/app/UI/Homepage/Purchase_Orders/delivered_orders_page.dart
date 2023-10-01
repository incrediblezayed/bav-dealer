import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/widgets/empty_widget.dart';
import 'package:dealerapp/src/widgets/k_purchase_order_bike_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DeliveredOrdersPage extends ConsumerWidget {
  const DeliveredOrdersPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final purchaseOrderPro = ref.watch(purchaseOrderProvider);
    return purchaseOrderPro.deliveredOrders.isEmpty
        ? EmptyWidget(title: "Uh oh! You have no orders.")
        : Container(
            child: ListView(
              shrinkWrap: true,
              children: purchaseOrderPro.deliveredOrders
                  .map((e) => KPurchaseOrderBikeCard(
                        vehiclePurchaseOrders: e,
                      ))
                  .toList(),
            ),
          );
  }
}
