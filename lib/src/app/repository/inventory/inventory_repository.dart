import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/app/repository/graphql_client.dart';
import 'package:dealerapp/src/app/repository/inventory/graphql/__generated__/inventory.data.gql.dart';
import 'package:dealerapp/src/app/repository/inventory/graphql/__generated__/inventory.req.gql.dart';
import 'package:dealerapp/src/utils/extensions.dart';
import 'package:dealerapp/src/utils/get_it.dart';
import 'package:ferry/ferry.dart';

///Inventory Repository Class
class InventoryRepository {
  final GraphqlClient _graphqlClient = getIt<GraphqlClient>();
  Client get _client => _graphqlClient.client;

  Future<List<GVehiclesData_vehicles>?> getVehicles() async {
    try {
      final resonse = await _client
          .request(
            GVehiclesReq(),
          )
          .first;

      if (resonse.linkException != null ||
          (resonse.graphqlErrors?.isNotEmpty ?? false)) {
        throw Exception('Somthing went wrong while getting list of vehicles');
      } else {
        return resonse.data?.vehicles?.toList();
      }
    } catch (e) {
      e.log();
    }
    return null;
  }

  ///Creating Stock Request Function
  Future<bool> createStockRequest(
    String colorId,
    String variantId,
    int stock,
    int price,
  ) async {
    try {
      final dealerId = cacheProvider.getDealerId();
      final response = await _client
          .request(
            GCreateVehicleDealerStockRequestReq(
              (b) => b.vars
                ..data.vehicleColor.connect.id = colorId
                ..data.vehicleVariant.connect.id = variantId
                ..data.stock = stock
                ..data.dealer.connect.id = dealerId
                ..data.dealer_prices = price,
            ),
          )
          .first;

      if (response.linkException != null ||
          (response.graphqlErrors?.isNotEmpty ?? false)) {
        throw Exception('Something went wrong');
      } else {
        return response.data != null;
      }
    } catch (e) {
      e.log();
    }

    return false;
  }
}
