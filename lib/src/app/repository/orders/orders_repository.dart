import 'package:built_collection/built_collection.dart';
import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/app/repository/graphql/__generated__/schema.schema.gql.dart';
import 'package:dealerapp/src/app/repository/graphql_client.dart';
import 'package:dealerapp/src/app/repository/orders/graphql/__generated__/orders.data.gql.dart';
import 'package:dealerapp/src/app/repository/orders/graphql/__generated__/orders.req.gql.dart';
import 'package:dealerapp/src/utils/extensions.dart';
import 'package:dealerapp/src/utils/index.dart';

class OrderRepository {
  final _client = getIt<GraphqlClient>().client;

  Future<List<GProductOrdersData_productOrders>?> getProductOrders(
    String OrderStatus,
  ) async {
    try {
      final dealerId = cacheProvider.getDealerId();
      final response = await _client
          .request(
            GProductOrdersReq(
              (b) => b.vars
                ..where.dealer.dealer.id.equals = dealerId
                ..where.status.equals = OrderStatus
                ..orderBy = ListBuilder([
                  GProductOrderOrderByInput(
                    (b) => b.createdAt = GOrderDirection.desc,
                  ),
                ]),
            ),
          )
          .first;
      if (response.linkException != null ||
          (response.graphqlErrors?.isNotEmpty ?? false)) {
        throw Exception(
          'Something went wrong while getting purchase order lists',
        );
      } else {
        return response.data?.productOrders?.toList();
      }
  } catch (e) {
      e.log();
    }
    return null;
  }

  Future<List<GVehicleOrdersData_vehicleOrders>?> getVehicleOrders(
    String orderStatus,
  ) async {
    try {
      final dealerId = cacheProvider.getDealerId();
      final response = await _client
          .request(
            GVehicleOrdersReq(
              (b) => b.vars
                ..where.dealer.dealer.id.equals = dealerId
                ..where.status.equals = orderStatus
                ..orderBy = ListBuilder([
                  GVehicleOrderOrderByInput(
                    (b) => b.createdAt = GOrderDirection.desc,
                  ),
                ]),
            ),
          )
          .first;

      if (response.linkException != null ||
          (response.graphqlErrors?.isNotEmpty ?? false)) {
        throw Exception(
          'Something went wrong while getting purchase order lists',
        );
      } else {
        return response.data?.vehicleOrders?.toList();
      }
    } catch (e) {
      e.log();
    }
    return null;
  }

  Future<List<GTestDriveOrdersData_testDriveOrders>?> getTestDriveOrders(
    String orderStatus,
  ) async {
    try {
      final dealerId = cacheProvider.getDealerId();
      final response = await _client
          .request(
            GTestDriveOrdersReq(
              (b) => b.vars
                ..where.dealer.dealer.id.equals = dealerId
                ..where.status.equals = orderStatus
                ..orderBy = ListBuilder([
                  GTestDriveOrderOrderByInput(
                    (b) => b.createdAt = GOrderDirection.desc,
                  ),
                ]),
            ),
          )
          .first;

      if (response.linkException != null ||
          (response.graphqlErrors?.isNotEmpty ?? false)) {
        throw Exception('Something went wrong while getting test order lists');
      } else {
        return response.data?.testDriveOrders?.toList();
      }
    } catch (e) {
      e.log();
    }
    return null;
  }

  Future<bool> updateOrderStatus({
    required String vehicleOrderId,
    required String status,
  }) async {
    try {
      final response = await _client
          .request(
            GUpdateVehicleOrderReq(
              (b) => b.vars
                ..data.status = status
                ..where.id = vehicleOrderId,
            ),
          )
          .first;
      if (response.linkException != null ||
          (response.graphqlErrors?.isNotEmpty ?? false)) {
        throw Exception('Failed to update status');
      }
      return response.data?.updateVehicleOrder?.id != null;
    } catch (e) {
      e.log();
    }
    return false;
  }

  Future<bool> updateTestDriveOrderStatus({
    required String testDriveOrderId,
    required String status,
  }) async {
    try {
      final response = await _client
          .request(
            GUpdateTestDriveOrderReq(
              (b) => b.vars
                ..data.status = status
                ..where.id = testDriveOrderId,
            ),
          )
          .first;
      if (response.linkException != null ||
          (response.graphqlErrors?.isNotEmpty ?? false)) {
        throw Exception('Failed to update status');
      }
      return response.data?.updateTestDriveOrder?.id != null;
    } catch (e) {
      e.log();
    }
    return false;
  }

  Future<bool> rejectOrder({
    required String orderId,
    required String reason,
    required bool isPurchaseOrder,
    String? description,
  }) async {
    try {
      final response = await _client.request(
        GCreateOrderRejectionByDealerReq(
          (b) {
            b.vars.data
              ..reason = reason
              ..description = description;
            if (isPurchaseOrder) {
              b.vars.data.vehicleOrders.connect =
                  ListBuilder<GVehicleOrderWhereUniqueInput>([
                GVehicleOrderWhereUniqueInput(
                  (b) => b..id = orderId,
                ),
              ]);
            } else {
              b.vars.data.testDriveOrders.connect =
                  ListBuilder<GTestDriveOrderWhereUniqueInput>([
                GTestDriveOrderWhereUniqueInput(
                  (b) => b..id = orderId,
                ),
              ]);
            }
            return b;
          },
        ),
      ).first;
      if (response.linkException != null ||
          (response.graphqlErrors?.isNotEmpty ?? false)) {
        throw Exception('Failed to reject order');
      }
      return response.data?.createOrderRejectionByDealer?.id != null;
    } catch (e) {
      e.log();
    }
    return false;
  }
}
