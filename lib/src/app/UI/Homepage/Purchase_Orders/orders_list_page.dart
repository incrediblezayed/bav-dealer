import 'package:dealerapp/src/app/provider/order_provider.dart';
import 'package:dealerapp/src/app/repository/orders/graphql/__generated__/orders.data.gql.dart';
import 'package:dealerapp/src/widgets/empty_widget.dart';
import 'package:dealerapp/src/widgets/k_order_bike_card.dart';
import 'package:flutter/material.dart';

class OrdersListPage extends StatelessWidget {
  final List<GVehicleOrdersData_vehicleOrders> data;
  OrdersProvider orderPro;
  OrdersListPage({super.key, required this.data, required this.orderPro});

  @override
  Widget build(BuildContext context) {
    return data.isEmpty
        ? EmptyWidget(title: "Uh oh! You have no orders.")
        : Container(
            color: Color(0xffececec),
            child: RefreshIndicator(
              onRefresh: () async {
                await orderPro.getPendingOrders();
                await orderPro.getAcceptedOrders();
                await orderPro.getRejectedOrders();
                await orderPro.getDeliveredOrders();
              },
              child: ListView(
                shrinkWrap: true,
                children: data
                    .map((e) => KOrderBikeCard(
                          vehiclePurchaseOrders: e,
                        ))
                    .toList(),
              ),
            ),
          );
  }
}
