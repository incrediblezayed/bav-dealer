import 'dart:math';

import 'package:built_collection/built_collection.dart';

import 'package:dealerapp/src/app/model/variant_details.model.dart';
import 'package:dealerapp/src/app/repository/stockRequest/graphql/__generated__/stock.req.gql.dart';
import 'package:dealerapp/src/utils/extensions.dart';
import 'package:ferry/ferry.dart';

import '../../../utils/get_it.dart';
import '../../model/stocks/vehicle_dealer_model.dart';
import '../graphql_client.dart';

class StockRepository {
  final GraphqlClient _graphqlClient = getIt<GraphqlClient>();
  Client get _client => _graphqlClient.client;

  Future<List>getProductStock() async {
    try {
      final response = await _client.request(
        GProductDealerStockRequestsReq(),
      ).first;
      print(response.data); // Log the data part of the response
      print(response.data?.productDealerStockRequests); // Log the specific part you are interested in
      return response.data?.productDealerStockRequests?.toList() ?? [];
    } catch (e) {
      e.log();
      return [];
    }
  }

  Future<(int, List<VehicleDealerModel>?)> getVehicleStock({
    required int take,
    required int skip,
    List<String>? ids,
  }) async {
    try {
      final response = await _client.request(
        GVehicleDealerStockRequestsReq(
              (b) {
            b
              ..vars.skip = skip
              ..vars.take = take;

            if (ids == null) {
              return b;
            } else {
              return b..vars.where.id.notIn = ListBuilder<String>(ids);
            }
          },
        ),
      ).first;

      if (response.linkException != null ||
          (response.graphqlErrors?.isNotEmpty ?? false)) {
        throw Exception('Somthing went wrong while getting list of vehicles');
      } else {
        if (response.data?.vehicleDealerStockRequests == null) {
          return (0, null);
        } else {
          final countQuery = await _client
              .request(
            GVehicleDealerStockRequestsReq(
                  (b) => b
                ..vars.where =
                response.operationRequest.vars.where.toBuilder(),
            ),
          )
              .first;
        /*  final count = countQuery.data?. ?? 0;
          return (
          count,
          response.data!.vehicleVariants!
              .map((p0) => VariantDetailsModel.fromJson(p0.toJson()))
              .toList()
          );*/
        }
      }
    } catch (e) {
      e.log();
    }
    return (0, null);
  }

}