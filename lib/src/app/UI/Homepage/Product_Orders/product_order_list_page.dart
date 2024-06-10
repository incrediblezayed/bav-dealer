import 'package:dealerapp/src/app/provider/order_provider.dart';
import 'package:dealerapp/src/app/repository/orders/graphql/__generated__/orders.data.gql.dart';
import 'package:dealerapp/src/widgets/empty_widget.dart';
import 'package:dealerapp/src/widgets/k_order_bike_card.dart';
import 'package:flutter/material.dart';

import '../../../../widgets/k_order_product_card.dart';

class ProductOrderListPage extends StatelessWidget {
  const ProductOrderListPage({required this.data, required this.orderPro, super.key});
  final List<GProductOrdersData_productOrders> data;
  final OrdersProvider orderPro;

  @override
  Widget build(BuildContext context) {
    return data.isEmpty
        ? const EmptyWidget(title: 'Uh oh! You have no orders.')
        : Container(
      color: const Color(0xffececec),
      child: RefreshIndicator(
        onRefresh: () async {
          await orderPro.getProductPendingOrders();
          await orderPro.getProductAcceptedOrders();
          await orderPro.getProductRejectedOrders();
          await orderPro.getProductDeliveredOrders();
        },
        child: ListView(
          shrinkWrap: true,
          children: data
              .map(
                (e) => KOrderProductCard(
              productPurchaseOrders: e,
            ),
          )
              .toList(),
        ),
      ),
    );
  }
}
