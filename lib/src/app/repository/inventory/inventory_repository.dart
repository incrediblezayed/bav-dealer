import 'package:built_collection/built_collection.dart';
import 'package:dealerapp/src/app/model/dealer_stock_model.dart';
import 'package:dealerapp/src/app/model/product_details_model.dart';
import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/app/repository/graphql/__generated__/schema.schema.gql.dart';
import 'package:dealerapp/src/app/repository/graphql_client.dart';
import 'package:dealerapp/src/app/repository/inventory/graphql/__generated__/inventory.data.gql.dart';
import 'package:dealerapp/src/app/repository/inventory/graphql/__generated__/inventory.req.gql.dart';
import 'package:dealerapp/src/utils/extensions.dart';
import 'package:dealerapp/src/utils/get_it.dart';
import 'package:dealerapp/src/utils/log_colors.dart';
import 'package:ferry/ferry.dart';

///Inventory Repository Class
class InventoryRepository {
  final GraphqlClient _graphqlClient = getIt<GraphqlClient>();

  Client get _client => _graphqlClient.client;

  Future<(int, List<ProductVariantModel>?)> getProducts({
    required int take,
    required int skip,
    List<String>? ids,
    String search = '',
    List<String> brands = const [],
    List<String> types = const [],
  }) async {
    try {
      'Getting list of products'.log(color: LogColors.green);
      final response = await _client.request(
        GProductVariantsReq(
          (b) {
            b
              ..vars.skip = skip
              ..vars.take = take
              ..vars.where.name.contains = search
              ..vars.where.name.mode = GQueryMode.insensitive;
            if (brands.isNotEmpty) {
              b.vars.where.product.brand.name.Gin = ListBuilder<String>(brands);
            }
            if (types.isNotEmpty) {
              b.vars.where.product.type.name.Gin = ListBuilder<String>(types);
            }

            b.vars.orderBy = ListBuilder<
                GProductVariantOrderByInput>(<GProductVariantOrderByInput>[
              GProductVariantOrderByInput((b) {
                b.index = GOrderDirection.asc;
              })
            ]);
            if (ids != null) {
              b.vars.where.id.notIn = ListBuilder<String>(ids);
            }
          },
        ),
      ).first;
      if (response.linkException != null ||
          (response.graphqlErrors?.isNotEmpty ?? false)) {
        throw Exception('Something went wrong while getting list of products');
      } else {
        if (response.data?.productVariants == null) {
          return (0, null);
        } else {
          final countQuery = await _client
              .request(
                GProductVariantsCountReq(
                  (b) => b
                    ..vars.where =
                        response.operationRequest.vars.where.toBuilder(),
                ),
              )
              .first;
          final count = countQuery.data?.productVariantsCount ?? 0;
          print('$count, PROPDUCT VARIANT COUNT TOTAL ==========');

          final productList = response.data!.productVariants!
              .map((p0) => ProductVariantModel.productFromJson(p0.toJson()))
              .toList();

          /// How can you covert the list itself to a string?
          return (count, productList);
        }
      }
    } catch (e) {
      e.log();
    }
    return (0, null);
  }

  /*Future<(int, List<dynamic>?)> getProduct({
    required int take,
    required int skip,
    List<String>? ids,
    String search = '',
  }) async {
    try {
      final response = await _client
          .request(
        GProductVariantsReq(
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
      )
          .first;
      if (response.linkException != null ||
          (response.graphqlErrors?.isNotEmpty ?? false)) {
        print(response.data?.productVariants);
        throw Exception('Something went wrong while getting list of products');
      } else {
        if (response.data?.productVariants == null) {
          return (0, null);
        }
      }
    } catch (e) {
      e.log();
    }
    return (0, null);
  }*/

  Future<(int, List<ProductVariantModel>?)> getVehicles({
    required int take,
    required int skip,
    List<String>? ids,
    String search = '',
    List<String> brands = const [],
    List<String> types = const [],
  }) async {
    try {
      final vehicleVariantQuery = GVehicleVariantsReq(
        (b) {
          b
            ..vars.skip = skip
            ..vars.take = take
            ..vars.where.informative.equals = false
            ..vars.where.name.contains = search
            ..vars.where.name.mode = GQueryMode.insensitive;
          if (brands.isNotEmpty) {
            b.vars.where.vehicle.brand.name.Gin = ListBuilder<String>(brands);
          }

          if (types.isNotEmpty) {
            b.vars.where.vehicle.type.name.Gin = ListBuilder<String>(types);
          }

          b.vars.orderBy = ListBuilder<
              GVehicleVariantOrderByInput>(<GVehicleVariantOrderByInput>[
            GVehicleVariantOrderByInput((b) {
              b.index = GOrderDirection.asc;
            })
          ]);

          if (ids == null) {
            b;
          } else {
            b.vars.where.id.notIn = ListBuilder<String>(ids);
            b.vars.orderBy = ListBuilder<
                GVehicleVariantOrderByInput>(<GVehicleVariantOrderByInput>[
              GVehicleVariantOrderByInput(
                (b) {
                  b.index = GOrderDirection.asc;
                },
              )
            ]);
          }
        },
      );

      final response = await _client.request(vehicleVariantQuery).first;

      if (response.linkException != null ||
          (response.graphqlErrors?.isNotEmpty ?? false)) {
        throw Exception('Something went wrong while getting list of vehicles');
      } else {
        if (response.data?.vehicleVariants == null) {
          return (0, null);
        } else {
          return (
            response.data!.vehicleVariantsCount ?? 0,
            response.data!.vehicleVariants!
                .map((p0) => ProductVariantModel.vehicleFromJson(p0.toJson()))
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

  Future<bool> createProductDealerStockRequest({
    required String variantId,
    required int stock,
    required String type,
  }) async {
    try {
      final dealerId = cacheProvider.getDealerId();
      final response = await _client
          .request(
            GCreateProductDealerStockRequestReq(
              (b) => b.vars
                ..data.productVariant.connect.id = variantId
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
            GVehicleDealersCountReq(
              (b) => b
                ..vars.where.dealer.id.equals = cacheProvider.getDealerId()
                ..vars.where.stock.gte = 0,
            ),
          )
          .first;
      if (result.linkException != null) {
        throw result.linkException!;
      }
      if (result.graphqlErrors?.isNotEmpty ?? false) {
        throw result.graphqlErrors!.first;
      }
      if (result.data?.vehicleDealersCount != null) {
        return result.data!.vehicleDealersCount!;
      }
    } catch (e) {
      e.log();
    }
    return 0;
  }

  Future<(int, List<DealerStockModel>)> currentStock({
    String text = '',
    List<String> brands = const [],
    List<String> types = const [],
    int skip = 0,
    int take = 15,
  }) async {
    try {
      final result = await _client.request(
        GVehicleDealersReq(
          (b) {
            b
              ..vars.where.dealer.id.equals = cacheProvider.getDealerId()
              ..vars.where.vehicleVariant.name.contains = text
              ..vars.where.vehicleVariant.name.mode = GQueryMode.insensitive
              ..vars.skip = skip
              ..vars.take = take;
            if (brands.isNotEmpty) {
              b.vars.where.vehicleVariant.vehicle.brand.name.Gin =
                  ListBuilder<String>(brands);
            }
            if (types.isNotEmpty) {
              b.vars.where.vehicleVariant.vehicle.type.name.Gin =
                  ListBuilder<String>(types);
            }
          },
        ),
      ).first;
      if (result.linkException != null) {
        throw result.linkException!;
      }
      if (result.graphqlErrors?.isNotEmpty ?? false) {
        throw result.graphqlErrors!.first;
      }
      if (result.data != null) {
        final dealers = result.data!.vehicleDealers!
            .where((p0) => p0.vehicleVariant != null)
            .toList()
            .map(
              (e) => DealerStockModel.fromJson(e.toJson(), DealerType.vehicle),
            )
            .toList();
        return (result.data!.vehicleDealersCount ?? 0, dealers);
      }
    } catch (e) {
      e.log();
    }
    return (0, <DealerStockModel>[]);
  }

  Future<(int, List<DealerStockModel>)> currentProductStock(
      {String text = '',
      List<String> brands = const [],
      List<String> types = const [],
      int skip = 0,
      int take = 15}) async {
    try {
      final result = await _client.request(
        GProductDealersReq(
          (b) {
            b
              ..vars.where.dealer.id.equals = cacheProvider.getDealerId()
              ..vars.where.productVariant.name.contains = text
              ..vars.where.productVariant.name.mode = GQueryMode.insensitive
              ..vars.skip = skip
              ..vars.take = take;
            if (brands.isNotEmpty) {
              b.vars.where.productVariant.product.brand.name.Gin =
                  ListBuilder<String>(brands);
            }
            if (types.isNotEmpty) {
              b.vars.where.productVariant.product.type.name.Gin =
                  ListBuilder<String>(types);
            }
          },
        ),
      ).first;
      if (result.linkException != null) {
        throw result.linkException!;
      }
      if (result.graphqlErrors?.isNotEmpty ?? false) {
        throw result.graphqlErrors!.first;
      }
      if (result.data != null) {
        final dealers = result.data!.productDealers!
            .where((p0) => p0.productVariant != null)
            .toList()
            .map(
              (e) => DealerStockModel.fromJson(e.toJson(), DealerType.product),
            )
            .toList();
        return (result.data!.productDealersCount ?? 0, dealers);
      }
    } catch (e) {
      e.log();
    }
    return (0, <DealerStockModel>[]);
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
    required List<String> guarantees,
  }) async {
    try {
      final request = await _client
          .request(
            GCreateVehicleDealerReq(
              (b) => b
                ..vars.data.dealer.connect.id = cacheProvider.getDealerId()
                ..vars.data.stock = 0
                ..vars.data.guarantees.connect =
                    ListBuilder<GGuaranteeWhereUniqueInput>(
                  guarantees.map<GGuaranteeWhereUniqueInput>(
                    (e) => GGuaranteeWhereUniqueInput(
                      (b) => b..id = e,
                    ),
                  ),
                )
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

  Future<DealerStockModel> updateVehicleDealer({
    required String dealerId,
    required List<String> guarantees,
    List<PriceModel>? prices,
  }) async {
    try {
      if (prices != null &&
          prices.where((element) => element.priceId.isNotEmpty).isNotEmpty) {
        await _client.request(
          GUpdatePricesReq(
            (b) {
              b.vars.data = ListBuilder<GPriceUpdateArgs>(
                prices
                    .map(
                      (e) => GPriceUpdateArgs(
                        (b) => b
                          ..where.id = e.priceId
                          ..data.amount = e.price,
                      ),
                    )
                    .toList(),
              );
            },
          ),
        ).first;
      }

      final result = await _client.request(
        GUpdateVehicleDealerReq(
          (b) {
            b.vars.where.id = dealerId;
            if (guarantees.isNotEmpty) {
              b.vars.data.guarantees.connect =
                  ListBuilder<GGuaranteeWhereUniqueInput>(
                guarantees.map(
                  (e) => GGuaranteeWhereUniqueInput(
                    (b) => b..id = e,
                  ),
                ),
              );
            }
            if (prices != null &&
                prices.where((element) => element.priceId.isEmpty).isNotEmpty) {
              b.vars.data.prices.create = ListBuilder<GPriceCreateInput>(
                prices.map<GPriceCreateInput>(
                  (e) => GPriceCreateInput(
                    (b) => b
                      ..amount = e.price
                      ..category.connect.id = e.type,
                  ),
                ),
              );
            }
          },
        ),
      ).first;
      if (result.linkException != null) {
        throw result.linkException!;
      }
      if (result.graphqlErrors?.isNotEmpty ?? false) {
        throw result.graphqlErrors!.first;
      }
      if (result.data?.updateVehicleDealer != null) {
        return DealerStockModel.fromJson(
            result.data!.updateVehicleDealer!.toJson(), DealerType.vehicle);
      } else {
        throw Exception('Failed to update stock');
      }
    } catch (e) {
      e.log();
      rethrow;
    }
  }

  Future<bool> createProductStockRequest({
    required String variantId,
    required List<PriceModel> prices,
    required List<String> guarantees,
  }) async {
    try {
      final request = await _client
          .request(
            GCreateProductDealerReq(
              (b) => b
                ..vars.data.dealer.connect.id = cacheProvider.getDealerId()
                ..vars.data.stock = 0
                ..vars.data.guarantees.connect =
                    ListBuilder<GGuaranteeWhereUniqueInput>(
                  guarantees.map<GGuaranteeWhereUniqueInput>(
                    (e) => GGuaranteeWhereUniqueInput(
                      (b) => b..id = e,
                    ),
                  ),
                )
                ..vars.data.productVariant.connect.id = variantId
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
      if (request.data?.createProductDealer?.id != null) {
        return true;
      } else {
        throw Exception('Failed to create stock');
      }
    } catch (e) {
      e.log();
      return false;
    }
  }

  Future<DealerStockModel> updateProductDealer({
    required String dealerId,
    required List<String> guarantees,
    List<PriceModel>? prices,
  }) async {
    try {
      if (prices != null &&
          prices.where((element) => element.priceId.isNotEmpty).isNotEmpty) {
        await _client.request(
          GUpdatePricesReq(
            (b) {
              b.vars.data = ListBuilder<GPriceUpdateArgs>(
                prices
                    .map(
                      (e) => GPriceUpdateArgs(
                        (b) => b
                          ..where.id = e.priceId
                          ..data.amount = e.price,
                      ),
                    )
                    .toList(),
              );
            },
          ),
        ).first;
      }

      final result = await _client.request(
        GUpdateProductDealerReq(
          (b) {
            b.vars.where.id = dealerId;
            if (guarantees.isNotEmpty) {
              b.vars.data.guarantees.connect =
                  ListBuilder<GGuaranteeWhereUniqueInput>(
                guarantees.map(
                  (e) => GGuaranteeWhereUniqueInput(
                    (b) => b..id = e,
                  ),
                ),
              );
            }
            if (prices != null &&
                prices.where((element) => element.priceId.isEmpty).isNotEmpty) {
              b.vars.data.prices.create = ListBuilder<GPriceCreateInput>(
                prices.map<GPriceCreateInput>(
                  (e) => GPriceCreateInput(
                    (b) => b
                      ..amount = e.price
                      ..category.connect.id = e.type,
                  ),
                ),
              );
            }
          },
        ),
      ).first;
      if (result.linkException != null) {
        throw result.linkException!;
      }
      if (result.graphqlErrors?.isNotEmpty ?? false) {
        throw result.graphqlErrors!.first;
      }
      if (result.data?.updateProductDealer != null) {
        return DealerStockModel.fromJson(
            result.data!.updateProductDealer!.toJson(), DealerType.product);
      } else {
        throw Exception('Failed to update stock');
      }
    } catch (e) {
      e.log();
      rethrow;
    }
  }

  Future<(int, List<DealerStockModel>)> getTestDriveStock(
      {required int skip,
      required int take,
      required String query,
      List<String> brands = const [],
      List<String> types = const []}) async {
    final dealerId = cacheProvider.getDealerId();
    try {
      dealerId.log();

      final response = await _client.request(
        GTestDriveDealersReq(
          (b) {
            b
              ..vars.where.dealer.id.equals = dealerId
              ..vars.where.available.equals = true
              ..vars.where.vehicleVariant.name.contains = query
              ..vars.where.vehicleVariant.name.mode = GQueryMode.insensitive
              ..vars.skip = skip
              ..vars.take = take;
            if (brands.isNotEmpty) {
              b.vars.where.vehicleVariant.vehicle.brand.name.Gin =
                  ListBuilder<String>(brands);
            }
            if (types.isNotEmpty) {
              b.vars.where.vehicleVariant.vehicle.type.name.Gin =
                  ListBuilder<String>(types);
            }
          },
        ),
      ).first;
      if (response.linkException != null) {
        throw response.linkException!;
      }
      if (response.graphqlErrors?.isNotEmpty ?? false) {
        throw response.graphqlErrors!.first;
      }
      if (response.data?.testDriveDealers != null) {
        return (
          response.data?.testDriveDealersCount ?? 0,
          (response.data?.testDriveDealers?.toList() ?? [])
              .map(
                (e) =>
                    DealerStockModel.fromJson(e.toJson(), DealerType.testDrive),
              )
              .toList()
        );
      } else {
        throw Exception(
            'Something went wrong while fetching the test drive stocks');
      }
    } catch (e) {
      e.log();
      rethrow;
    }
  }

  Future<DealerStockModel?> addToTestDriveStock(
      {required String? colorId,
      required String variantId,
      String? testDriveDealerId,
      required String amount}) async {
    try {
      final dealerId = cacheProvider.getDealerId();
      String testDriveId = '';
      if (testDriveDealerId == null || testDriveDealerId.isEmpty) {
        final testDriveDealer = await _client.request(GTestDriveDealersReq(
          (b) {
            b.vars.skip = 0;
            b.vars.take = 1;
            b.vars.where
              ..vehicleColor.id.equals = colorId
              ..vehicleVariant.id.equals = variantId
              ..dealer.id.equals = dealerId;
          },
        )).first;

        if (testDriveDealer.data?.testDriveDealers?.firstOrNull?.id == null) {
          final newTestDriveDealer = await _client
              .request(GCreateTestDriveDealerReq(
                (b) => b.vars.data
                  ..dealer.connect.id = dealerId
                  ..vehicleVariant.connect.id = variantId
                  ..vehicleColor.connect.id = colorId
                  ..price = int.parse(amount),
              ))
              .first;
          if (newTestDriveDealer.data?.createTestDriveDealer?.id == null) {
            throw Exception('Failed to get test drive details');
          } else {
            testDriveId = newTestDriveDealer.data!.createTestDriveDealer!.id;
          }
        } else {
          testDriveId = testDriveDealer.data!.testDriveDealers!.first.id;
        }
      } else {
        testDriveId = testDriveDealerId;
      }
      final result = await _client
          .request(
            GUpdateTestDriveDealerReq((b) => b.vars
              ..data.available = true
              ..data.price = int.parse(amount)
              ..where.id = testDriveId),
          )
          .first;
      if (result.data?.updateTestDriveDealer?.id != null) {
        return DealerStockModel.fromJson(
            result.data!.updateTestDriveDealer!.toJson(), DealerType.testDrive);
      } else {
        return null;
      }
    } catch (e) {
      e.log();
      rethrow;
    }
  }

  ///Filter queries
  Future<(List<String>, List<String>)> getProductData() async {
    try {
      final response = await _client.request(GProductFilterDataReq()).first;
      if (response.linkException != null) {
        throw response.linkException!;
      }
      if (response.graphqlErrors?.isNotEmpty ?? false) {
        throw response.graphqlErrors!.first;
      }
      if (response.data != null) {
        return (
          response.data!.productTypes!.map((e) => e.name ?? '').toList(),
          response.data!.brands!
              .where((e) => e.type?.contains('product') ?? false)
              .map((e) => e.name ?? '')
              .toList(),
        );
      } else {
        return (<String>[], <String>[]);
      }
    } catch (e) {
      e.log();
      return (<String>[], <String>[]);
    }
  }

  Future<(List<String>, List<String>)> getVehicleData() async {
    try {
      final response = await _client.request(GVehicleFilterDataReq()).first;
      if (response.linkException != null) {
        throw response.linkException!;
      }
      if (response.graphqlErrors?.isNotEmpty ?? false) {
        throw response.graphqlErrors!.first;
      }
      if (response.data != null) {
        return (
          response.data!.vehicleTypes!.map((e) => e.name ?? '').toList(),
          response.data!.brands!
              .where((e) => e.type?.contains('vehicle') ?? false)
              .map((e) => e.name ?? '')
              .toList()
        );
      } else {
        return (<String>[], <String>[]);
      }
    } catch (e) {
      e.log();
      return (<String>[], <String>[]);
    }
  }
}

class PriceModel {
  PriceModel({
    required this.price,
    required this.type,
    required this.name,
    required this.priceId,
  });

  int price;
  final String type;
  final String name;
  final String priceId;
}
