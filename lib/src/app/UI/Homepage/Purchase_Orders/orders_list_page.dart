import 'package:dealerapp/src/app/provider/order_provider.dart';
import 'package:dealerapp/src/app/repository/orders/graphql/__generated__/orders.data.gql.dart';
import 'package:dealerapp/src/widgets/default_pagination_scroll_callback.dart';
import 'package:dealerapp/src/widgets/empty_widget.dart';
import 'package:dealerapp/src/widgets/k_order_bike_card.dart';
import 'package:dealerapp/src/widgets/loading_widget.dart';
import 'package:flutter/material.dart';

class OrdersListPage extends StatelessWidget {
  const OrdersListPage(
      {required this.data,
      required this.orderPro,
      required this.tab,
      super.key});
  final List<GVehicleOrdersData_vehicleOrders>? data;
  final OrdersProvider orderPro;
  final int tab;

  @override
  Widget build(BuildContext context) {
    final count = orderPro.orderCount;
    final data = this.data;
    return data == null
        ? const Center(
            child: LoadingWidget(),
          )
        : data.isEmpty
            ? const EmptyWidget(title: 'Uh oh! You have no orders.')
            : Container(
                color: const Color(0xffececec),
                child: DefaultScrollPaginationCallback(
                  callbackCondition: count > data.length,
                  onLoadMore: () {
                    switch (tab) {
                      case 0:
                        orderPro.getPaginatedPendingOrders();
                      case 1:
                        orderPro.getPaginatedAcceptedOrders();
                      case 2:
                        orderPro.getPaginatedRejectedOrders();
                      case 3:
                        orderPro.getPaginatedDeliveredOrders();
                    }
                  },
                  child: RefreshIndicator.adaptive(
                    onRefresh: () async {
                      switch (tab) {
                        case 0:
                          orderPro.getPendingOrders();
                        case 1:
                          orderPro.getAcceptedOrders();
                        case 2:
                          orderPro.getRejectedOrders();
                        case 3:
                          orderPro.getDeliveredOrders();
                      }
                    },
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        if (index >= data.length) {
                          return const LoadingWidget();
                        }
                        return KOrderBikeCard(
                          vehiclePurchaseOrders: data[index],
                        );
                      },
                      itemCount: data.length + (data.length < count ? 1 : 0),
                    ),
                  ),
                ),
              );
  }
}
