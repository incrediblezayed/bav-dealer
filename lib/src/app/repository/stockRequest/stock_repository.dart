import 'dart:math';

import 'package:built_collection/built_collection.dart';

import 'package:dealerapp/src/app/model/variant_details.model.dart';
import 'package:dealerapp/src/app/repository/stockRequest/graphql/__generated__/stock.req.gql.dart';
import 'package:dealerapp/src/utils/extensions.dart';
import 'package:ferry/ferry.dart';

import '../../../utils/get_it.dart';
import '../../model/stocks/product_dealer_model.dart';
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
      // Log the data part of the response
      print(response.data?.productDealerStockRequests); // Log the specific part you are interested in
      return response.data?.productDealerStockRequests?.toList() ?? [];
    } catch (e) {
      e.log();
      return [];
    }
  }

  Future<Object> getVehicleStock({
    required int take,
    required int skip,
    List<String>? ids,
  }) async {
    try {
      final response = await _client.request(
        GVehicleDealerStockRequestsReq(),
      ).first;
      print(response); // Log the entire response
      print(response.data); // Log the data part of the response
      print(response.data?.vehicleDealerStockRequests); // Log the specific part you are interested in
      return response.data?.vehicleDealerStockRequests?.toList() ?? [];
    } catch (e) {
      e.log();
    }
    return (0, null);
  }

}