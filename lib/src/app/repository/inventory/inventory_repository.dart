import 'package:built_collection/built_collection.dart';
import 'package:dealerapp/src/app/model/variant_details.model.dart';
import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/app/repository/graphql/__generated__/schema.schema.gql.dart';
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

  Future<(int, List<VariantDetailsModel>?)> getVehicles({
    required int take,
    required int skip,
    List<String>? ids,
    String search = '',
  }) async {
    try {
      final response = await _client.request(
        GVehicleVariantsReq(
          (b) {
            b
              ..vars.skip = skip
              ..vars.take = take
              ..vars.where.name.contains = search
              ..vars.where.name.mode = GQueryMode.insensitive;
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
        if (response.data?.vehicleVariants == null) {
          return (0, null);
        } else {
          final countQuery = await _client
              .request(
                GVehicleVariantsCountReq(
                  (b) => b
                    ..vars.where =
                        response.operationRequest.vars.where.toBuilder(),
                ),
              )
              .first;
          final count = countQuery.data?.vehicleVariantsCount ?? 0;
          return (
            count,
            response.data!.vehicleVariants!
                .map((p0) => VariantDetailsModel.fromJson(p0.toJson()))
                .toList()
          );
        }
      }
    } catch (e) {
      e.log();
    }
    return (0, null);
  }

  ///Creating Stock Request Function
  Future<bool> updateStockRequest({
    required String colorId,
    required String variantId,
    required int stock,
    required String type,
  }) async {
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
                ..data.type = type,
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

  Future<int> getStockCount() async {
    try {
      final result = await _client
          .request(
            GVehicleDealersReq(
              (b) =>
                  b..vars.where.dealer.id.equals = cacheProvider.getDealerId(),
            ),
          )
          .first;
      if (result.linkException != null) {
        throw result.linkException!;
      }
      if (result.graphqlErrors?.isNotEmpty ?? false) {
        throw result.graphqlErrors!.first;
      }
      if (result.data != null) {
        return result.data!.vehicleDealers!
            .map((p0) => p0.stock!)
            .reduce((value, element) => value + element);
      }
    } catch (e) {
      e.log();
    }
    return 0;
  }

  Future<List<GVehicleDealersData_vehicleDealers>> currentStock({
    String text = '',
  }) async {
    try {
      final result = await _client
          .request(
            GVehicleDealersReq(
              (b) => b
                ..vars.where.dealer.id.equals = cacheProvider.getDealerId()
                ..vars.where.vehicleVariant.name.contains = text
                ..vars.where.vehicleVariant.name.mode = GQueryMode.insensitive,
            ),
          )
          .first;
      if (result.linkException != null) {
        throw result.linkException!;
      }
      if (result.graphqlErrors?.isNotEmpty ?? false) {
        throw result.graphqlErrors!.first;
      }
      if (result.data != null) {
        return result.data!.vehicleDealers!
            .where((p0) => p0.vehicleVariant != null)
            .toList();
      }
    } catch (e) {
      e.log();
    }
    return [];
  }

  Future<List<GPriceCategoriesData_priceCategories>>
      getPriceCategories() async {
    try {
      final result = await _client.request(GPriceCategoriesReq()).first;
      if (result.linkException != null) {
        throw result.linkException!;
      }
      if (result.graphqlErrors?.isNotEmpty ?? false) {
        throw result.graphqlErrors!.first;
      }
      if (result.data != null) {
        return result.data!.priceCategories!.toList();
      }
    } catch (e) {
      e.log();
    }
    return [];
  }

  Future<bool> createStockRequest({
    required String variantId,
    required String colorId,
    required List<PriceModel> prices,
  }) async {
    try {
      final request = await _client
          .request(
            GCreateVehicleDealerReq(
              (b) => b
                ..vars.data.dealer.connect.id = cacheProvider.getDealerId()
                ..vars.data.stock = 0
                ..vars.data.vehicleColor.connect.id = colorId
                ..vars.data.vehicleVariant.connect.id = variantId
                ..vars.data.prices.create = ListBuilder<GPriceCreateInput>(
                  prices.map<GPriceCreateInput>(
                    (e) => GPriceCreateInput(
                      (b) => b
                        ..amount = e.price
                        ..category.connect.id = e.type,
                    ),
                  ),
                ),
            ),
          )
          .first;
      if (request.linkException != null) {
        throw request.linkException!;
      }
      if (request.graphqlErrors != null && request.graphqlErrors!.isNotEmpty) {
        throw request.graphqlErrors!.first;
      }
      if (request.data?.createVehicleDealer?.id != null) {
        return true;
      } else {
        throw Exception('Failed to create stock');
      }
    } catch (e) {
      e.log();
      return false;
    }
  }
}

class PriceModel {
  PriceModel({
    required this.price,
    required this.type,
    required this.name,
  });
  int price;
  final String type;
  final String name;
}
