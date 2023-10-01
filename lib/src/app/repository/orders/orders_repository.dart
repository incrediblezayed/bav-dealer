import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/app/repository/graphql/__generated__/schema.schema.gql.dart';
import 'package:built_collection/built_collection.dart';
import 'package:dealerapp/src/app/repository/graphql_client.dart';
import 'package:dealerapp/src/app/repository/orders/graphql/__generated__/orders.data.gql.dart';
import 'package:dealerapp/src/app/repository/orders/graphql/__generated__/orders.req.gql.dart';
import 'package:dealerapp/src/utils/extensions.dart';
import 'package:dealerapp/src/utils/index.dart';

class OrderRepository {
  final _client = getIt<GraphqlClient>().client;

  Future<List<GVehicleOrdersData_vehicleOrders>?> getVehicleOrders(
      String orderStatus) async {
    try {
      final dealerId = cacheProvider.getDealerId();
      final response = await _client
          .request(GVehicleOrdersReq((b) => b.vars
            ..where.dealer.dealer.id.equals = dealerId
            ..where.status.equals = orderStatus
            ..orderBy = ListBuilder([
              GVehicleOrderOrderByInput(
                  (b) => b.createdAt = GOrderDirection.desc)
            ])))
          .first;

      if (response.linkException != null ||
          (response.graphqlErrors?.isNotEmpty ?? false)) {
        throw Exception(
            'Something went wrong while getting purchase order lists');
      } else {
        print(response.data?.vehicleOrders?.toList());
        print('*************************************************************************************** ${dealerId}');
        return response.data?.vehicleOrders?.toList();
      }
    } catch (e) {
      e.log();
    }
    return null;
  }
}
