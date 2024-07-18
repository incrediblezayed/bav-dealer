import 'package:dealerapp/src/app/provider/order_provider.dart';
import 'package:dealerapp/src/app/repository/orders/graphql/__generated__/orders.data.gql.dart';
import 'package:dealerapp/src/widgets/default_pagination_scroll_callback.dart';
import 'package:dealerapp/src/widgets/empty_widget.dart';
import 'package:dealerapp/src/widgets/k_test_order_bike_card.dart';
import 'package:flutter/material.dart';

class TestOrdersListPage extends StatelessWidget {
  const TestOrdersListPage({
    required this.data,
    required this.ordersPro,
    required this.page,
    super.key,
  });
  final List<GTestDriveOrdersData_testDriveOrders>? data;
  final OrdersProvider ordersPro;
  final int page;

  @override
  Widget build(BuildContext context) {
    final count = ordersPro.testDriveOrderCount;
    return data == null
        ? const Center(
            child: CircularProgressIndicator.adaptive(),
          )
        : data!.isEmpty
            ? const EmptyWidget(title: 'Uh oh! You have no orders.')
            : ColoredBox(
                color: const Color(0xffececec),
                child: DefaultScrollPaginationCallback(
                    onLoadMore: () {
                      switch (page) {
                        case 0:
                          ordersPro.getPaginatedTestDrivePendingOrders();
                        case 1:
                          ordersPro.getPaginatedTestDriveAcceptedOrders();
                        case 2:
                          ordersPro.getPaginatedTestDriveRejectedOrders();
                        case 3:
                          ordersPro.getPaginatedTestDriveDeliveredOrders();
                      }
                    },
                    callbackCondition: data!.length < count,
                    child: RefreshIndicator.adaptive(
                      onRefresh: () async {
                        switch (page) {
                          case 0:
                            await ordersPro.getTestDrivePendingOrders();
                          case 1:
                            await ordersPro.getTestDriveAcceptedOrders();
                          case 2:
                            await ordersPro.getTestDriveRejectedOrders();
                          case 3:
                            await ordersPro.getTestDriveDeliveredOrders();
                        }
                      },
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount:
                            data!.length + (data!.length < count ? 1 : 0),
                        itemBuilder: (context, index) {
                          if (index >= data!.length) {
                            return const CircularProgressIndicator.adaptive();
                          }
                          return KTestOrdersBikeCard(
                            vehicleTestDriveOrders: data![index],
                          );
                        },
                      ),
                    )),
              );
  }
}
