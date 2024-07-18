import 'package:built_collection/built_collection.dart';
import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/app/repository/graphql/__generated__/schema.schema.gql.dart';
import 'package:dealerapp/src/app/repository/graphql_client.dart';
import 'package:dealerapp/src/app/repository/orders/graphql/__generated__/orders.data.gql.dart';
import 'package:dealerapp/src/app/repository/orders/graphql/__generated__/orders.req.gql.dart';
import 'package:dealerapp/src/utils/extensions.dart';
import 'package:dealerapp/src/utils/index.dart';
import 'package:dealerapp/src/utils/log_colors.dart';

class OrderRepository {
  final _client = getIt<GraphqlClient>().client;

  Future<(int,List<GProductOrdersData_productOrders>?)> getProductOrders(
    {required String orderStatus,
    required int skip,
    required int take,
  }) async {
    try {
      final dealerId = cacheProvider.getDealerId();
      'Getting list of products orders'.log(color: LogColors.green);
      final response = await _client
          .request(
            GProductOrdersReq(
              (b) => b.vars
                ..skip = skip
                ..take = take
                ..where.dealer.dealer.id.equals = dealerId
                ..where.status.equals = orderStatus
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
        return (
          response.data?.productOrdersCount ?? 0,
          response.data?.productOrders?.toList()
        );
      }
    } catch (e) {
      e.log();
    }
    return (0, null);
  }

  Future<(int, List<GVehicleOrdersData_vehicleOrders>?)> getVehicleOrders({
    required String orderStatus,
    required int skip,
    required int take,
  }) async {
    try {
      final dealerId = cacheProvider.getDealerId();
      final response = await _client
          .request(
            GVehicleOrdersReq(
              (b) => b.vars
                ..skip = skip
                ..take = take
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
        throw Exception('Something went wrong while getting vehicle order lists');
      } else {
        return (
          response.data?.vehicleOrdersCount ?? 0,
          response.data?.vehicleOrders?.toList()
        );
      }
    } catch (e) {
      e.log();
    }
    return (0, null);
  }

  Future<(int, List<GTestDriveOrdersData_testDriveOrders>?)>
      getTestDriveOrders({
    required String orderStatus,
    required int skip,
    required int take,
  }) async {
    try {
      final dealerId = cacheProvider.getDealerId();
      final response = await _client
          .request(
            GTestDriveOrdersReq(
              (b) => b.vars
                ..skip = skip
                ..take = take
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
        return (
          response.data?.testDriveOrdersCount ?? 0,
          response.data?.testDriveOrders?.toList()
        );
      }
    } catch (e) {
      e.log();
    }
    return (0, null);
  }

  Future<int> getTestDriveOrdersCount(
    String orderStatus,
  ) async {
    try {
      final dealerId = cacheProvider.getDealerId();
      final response = await _client
          .request(
            GTestDriveOrdersCountReq(
              (b) => b.vars
                ..where.dealer.dealer.id.equals = dealerId
                ..where.status.equals = orderStatus,
            ),
          )
          .first;

      if (response.linkException != null ||
          (response.graphqlErrors?.isNotEmpty ?? false)) {
        throw Exception('Something went wrong while getting test order lists');
      } else {
        return response.data?.testDriveOrdersCount ?? 0;
      }
    } catch (e) {
      e.log();
    }
    return 0;
  }

  Future<int> getVehicleOrdersCount(
    String orderStatus,
  ) async {
    try {
      final dealerId = cacheProvider.getDealerId();
      final response = await _client
          .request(
            GVehicleOrdersCountReq(
              (b) => b.vars
                ..where.dealer.dealer.id.equals = dealerId
                ..where.status.equals = orderStatus,
            ),
          )
          .first;

      if (response.linkException != null ||
          (response.graphqlErrors?.isNotEmpty ?? false)) {
        throw Exception('Something went wrong while getting test order lists');
      } else {
        return response.data?.vehicleOrdersCount ?? 0;
      }
    } catch (e) {
      e.log();
    }
    return 0;
  }

  Future<bool> updateProductOrderStatus({
    required String productOrderId,
    required String status,
  }) async {
    try {
      final response = await _client
          .request(GUpdateProductOrderReq(
            (b) => b.vars
              ..data.status = status
              ..where.id = productOrderId,
          ))
          .first;
      if (response.linkException != null ||
          (response.graphqlErrors?.isNotEmpty ?? false)) {
        throw Exception('Failed to update status');
      }
      return response.data?.updateProductOrder?.id != null;
    } catch (e) {
      e.log();
    }
    return false;
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
    required String
        orderType, // Instead of bool, use String to distinguish order types
    String? description,
  }) async {
    try {
      final response = await _client.request(
        GCreateOrderRejectionByDealerReq(
          (b) {
            b.vars.data
              ..reason = reason
              ..description = description;

            if (orderType == 'vehicle') {
              b.vars.data.vehicleOrders.connect =
                  ListBuilder<GVehicleOrderWhereUniqueInput>([
                GVehicleOrderWhereUniqueInput(
                  (b) => b.id = orderId,
                ),
              ]);
            } else if (orderType == 'testDrive') {
              b.vars.data.testDriveOrders.connect =
                  ListBuilder<GTestDriveOrderWhereUniqueInput>([
                GTestDriveOrderWhereUniqueInput(
                  (b) => b.id = orderId,
                ),
              ]);
            } else if (orderType == 'product') {
              b.vars.data.productOrders.connect =
                  ListBuilder<GProductOrderWhereUniqueInput>([
                GProductOrderWhereUniqueInput(
                  (b) => b.id = orderId,
                ),
              ]);
            } else {
              throw Exception('Invalid order type');
            }
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
