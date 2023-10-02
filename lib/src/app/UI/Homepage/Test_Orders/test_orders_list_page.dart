import 'package:dealerapp/src/app/repository/orders/graphql/__generated__/orders.data.gql.dart';
import 'package:dealerapp/src/widgets/empty_widget.dart';
import 'package:dealerapp/src/widgets/k_test_order_bike_card.dart';
import 'package:flutter/material.dart';

class TestOrdersListPage extends StatelessWidget {
  final List<GTestDriveOrdersData_testDriveOrders> data;
  const TestOrdersListPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return data.isEmpty
        ? EmptyWidget(title: "Uh oh! You have no orders.")
        : Container(
            color: Color(0xffececec),
            child: ListView(
              shrinkWrap: true,
              children: data
                  .map((e) => KTestOrdersBikeCard(
                        vehicleTestDriveOrders: e,
                      ))
                  .toList(),
            ),
          );
  }
}
