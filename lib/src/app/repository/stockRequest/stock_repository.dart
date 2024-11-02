import 'package:dealerapp/src/app/model/dealer_stock_model.dart';
import 'package:dealerapp/src/app/repository/graphql/__generated__/schema.schema.gql.dart';
import 'package:dealerapp/src/app/repository/stockRequest/graphql/__generated__/stock.req.gql.dart';
import 'package:dealerapp/src/utils/extensions.dart';
import 'package:ferry/ferry.dart';

import '../../../utils/get_it.dart';
import '../graphql_client.dart';

class StockRepository {
  final GraphqlClient _graphqlClient = getIt<GraphqlClient>();
  Client get _client => _graphqlClient.client;

  Future<(int, List<DealerStockModel>)> getProductStock(
      {required int skip, required int take, required String query}) async {
    try {
      final response = await _client
          .request(
            GProductDealerStockRequestsReq(
              (b) => b
                ..vars.take = take
                ..vars.skip = skip
                ..vars.where.productVariant.name.contains = query
                ..vars.where.productVariant.name.mode = GQueryMode.insensitive,
            ),
          )
          .first;
      return (
        response.data?.productDealerStockRequestsCount ?? 0,
        (response.data?.productDealerStockRequests?.toList() ?? [])
            .where((e) => e.productVariant != null)
            .map(
              (e) => DealerStockModel.fromJson(e.toJson(), DealerType.product),
            )
            .toList()
      );
    } catch (e) {
      e.log();
      rethrow;
    }
  }

  Future<(int, List<DealerStockModel>)> getVehicleStock(
      {required int skip, required int take, required String query}) async {
    try {
      final response = await _client
          .request(
            GVehicleDealerStockRequestsReq(
              (b) => b
                ..vars.take = take
                ..vars.skip = skip
                ..vars.where.vehicleVariant.name.contains = query
                ..vars.where.vehicleVariant.name.mode = GQueryMode.insensitive,
            ),
          )
          .first;
      return (
        response.data?.vehicleDealerStockRequestsCount ?? 0,
        (response.data?.vehicleDealerStockRequests?.toList() ?? [])
            .where((e) => e.vehicleVariant != null)
            .map(
              (e) => DealerStockModel.fromJson(e.toJson(), DealerType.vehicle),
            )
            .toList()
      );
    } catch (e) {
      e.log();
      rethrow;
    }
  }
}
