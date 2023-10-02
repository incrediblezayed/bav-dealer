import 'package:dealerapp/src/app/repository/orders/graphql/__generated__/orders.data.gql.dart';
import 'package:dealerapp/src/widgets/empty_widget.dart';
import 'package:dealerapp/src/widgets/k_purchase_order_bike_card.dart';
import 'package:flutter/material.dart';

class OrdersListPage extends StatelessWidget {
  final List<GVehicleOrdersData_vehicleOrders> data;
  const OrdersListPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return data.isEmpty
        ? EmptyWidget(title: "Uh oh! You have no orders.")
        : Container(
            child: ListView(
              shrinkWrap: true,
              children: data
                  .map((e) => KPurchaseOrderBikeCard(
                        vehiclePurchaseOrders: e,
                      ))
                  .toList(),
            ),
          );
  }
}
