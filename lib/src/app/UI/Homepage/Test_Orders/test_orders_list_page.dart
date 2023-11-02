import 'package:dealerapp/src/app/provider/order_provider.dart';
import 'package:dealerapp/src/app/repository/orders/graphql/__generated__/orders.data.gql.dart';
import 'package:dealerapp/src/widgets/empty_widget.dart';
import 'package:dealerapp/src/widgets/k_test_order_bike_card.dart';
import 'package:flutter/material.dart';

class TestOrdersListPage extends StatelessWidget {
  TestOrdersListPage({required this.data, required this.ordersPro, super.key});
  final List<GTestDriveOrdersData_testDriveOrders> data;
  OrdersProvider ordersPro;

  @override
  Widget build(BuildContext context) {
    return data.isEmpty
        ? const EmptyWidget(title: 'Uh oh! You have no orders.')
        : Container(
            color: const Color(0xffececec),
            child: RefreshIndicator(
              onRefresh: () async {
                await ordersPro.getTestDrivePendingOrders();
                await ordersPro.getTestDriveAcceptedOrders();
                await ordersPro.getTestDriveRejectedOrders();
                await ordersPro.getTestDriveDeliveredOrders();
              },
              child: ListView(
                shrinkWrap: true,
                children: data
                    .map((e) => KTestOrdersBikeCard(
                          vehicleTestDriveOrders: e,
                        ),)
                    .toList(),
              ),
            ),
          );
  }
}
