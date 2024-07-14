import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../widgets/empty_widget.dart';
import '../../../../widgets/k_order_product_card.dart';
import '../../../provider/app_provider.dart';
import '../../../provider/order_provider.dart';
import '../../../repository/orders/graphql/__generated__/orders.data.gql.dart';

class ProductOrderListPage extends ConsumerWidget {
  const ProductOrderListPage(
      {required this.data, required this.orderPro, super.key});
  final List<GProductOrdersData_productOrders> data;
  final OrdersProvider orderPro;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return data.isEmpty
        ? const EmptyWidget(title: 'Uh oh! You have no orders.')
        : Container(
            color: const Color(0xffececec),
            child: RefreshIndicator(
                onRefresh: () async {
                  await ref
                      .read(orderProvider(OrderFamily.productOrders).notifier)
                      .getProductPendingOrders();
                  await ref
                      .read(orderProvider(OrderFamily.productOrders).notifier)
                      .getProductAcceptedOrders();
                  await ref
                      .read(orderProvider(OrderFamily.productOrders).notifier)
                      .getProductRejectedOrders();
                  await ref
                      .read(orderProvider(OrderFamily.productOrders).notifier)
                      .getProductDeliveredOrders();
                },
                child: ListView(
                    shrinkWrap: true,
                    children: data
                        .map(
                          (e) => KOrderProductCard(
                            productPurchaseOrders: e,
                            onOrderAccepted: () {
                              // Trigger a refresh when the order is accepted
                              ref.refresh(
                                  orderProvider(OrderFamily.productOrders));
                            },
                          ),
                        )
                        .toList())));
  }
}
