import 'package:dealerapp/src/widgets/default_pagination_scroll_callback.dart';
import 'package:dealerapp/src/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../widgets/empty_widget.dart';
import '../../../../widgets/k_order_product_card.dart';
import '../../../provider/app_provider.dart';
import '../../../provider/order_provider.dart';
import '../../../repository/orders/graphql/__generated__/orders.data.gql.dart';

class ProductOrderListPage extends ConsumerWidget {
  const ProductOrderListPage({
    required this.data,
    required this.orderPro,
    super.key,
    required this.tab,
  });
  final List<GProductOrdersData_productOrders>? data;
  final OrdersProvider orderPro;
  final int tab;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = this.data;
    final count = orderPro.productOrderCount;
    if (data == null) {
      return const Center(child: LoadingWidget());
    } else {
      if (data.isEmpty) {
        return const EmptyWidget(title: 'Uh oh! You have no orders.');
      } else {
        return Container(
            color: const Color(0xffececec),
            child: DefaultScrollPaginationCallback(
              callbackCondition: data.length < count,
              onLoadMore: () {
                switch (tab) {
                  case 0:
                    orderPro.getPaginatedProductPendingOrders();
                  case 1:
                    orderPro.getPaginatedProductAcceptedOrders();
                  case 2:
                    orderPro.getPaginatedProductRejectedOrders();
                  case 3:
                    orderPro.getPaginatedProductDeliveredOrders();
                }
              },
              child: RefreshIndicator.adaptive(
                onRefresh: () async {
                  switch (tab) {
                    case 0:
                      orderPro.getProductPendingOrders();
                    case 1:
                      orderPro.getProductAcceptedOrders();
                    case 2:
                      orderPro.getProductRejectedOrders();
                    case 3:
                      orderPro.getProductDeliveredOrders();
                  }
                },
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: data.length + (data.length < count ? 1 : 0),
                  itemBuilder: (context, index) {
                    if (index >= data.length) {
                      return const LoadingWidget();
                    }
                    return KOrderProductCard(
                      productPurchaseOrders: data[index],
                      onOrderAccepted: () {
                        ref.refresh(orderProvider(OrderFamily.productOrders));
                      },
                    );
                  },
                ),
              ),
            ));
      }
    }
  }
}
