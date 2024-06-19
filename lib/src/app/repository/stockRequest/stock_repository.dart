import 'package:dealerapp/src/app/repository/stockRequest/graphql/__generated__/stock.req.gql.dart';
import 'package:dealerapp/src/utils/extensions.dart';
import 'package:ferry/ferry.dart';

import '../../../utils/get_it.dart';
import '../graphql_client.dart';

class stockRepository {
  final GraphqlClient _graphqlClient = getIt<GraphqlClient>();
  Client get _client => _graphqlClient.client;

  Future<List> getProductStock() async {
    try {
      final response = await _client.request(
        GProductDealerStockRequestsReq(),
      ).first;
      print(response); // Log the entire response
      print(response.data); // Log the data part of the response
      print(response.data?.productDealerStockRequests); // Log the specific part you are interested in
      return response.data?.productDealerStockRequests?.toList() ?? [];
    } catch (e) {
      e.log();
      return [];
    }
  }

  Future<List> getVehicleStock() async {
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
      return [];
    }
  }

}