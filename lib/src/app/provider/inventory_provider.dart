import 'dart:async';
import 'dart:developer';

import 'package:dealerapp/src/app/model/dealer_stock_model.dart';
import 'package:dealerapp/src/app/model/product_details_model.dart';
import 'package:dealerapp/src/app/model/variant_details.model.dart';
import 'package:dealerapp/src/app/repository/inventory/graphql/__generated__/inventory.data.gql.dart';
import 'package:dealerapp/src/app/repository/inventory/inventory_repository.dart';
import 'package:dealerapp/src/utils/extensions.dart';
import 'package:dealerapp/src/utils/global_exports.dart';

class InventoryProvider extends ChangeNotifier {
  List<GPriceCategoriesData_priceCategories> _priceCategories = [];

  List<GPriceCategoriesData_priceCategories> get priceCategories =>
      _priceCategories;

  set priceCategories(List<GPriceCategoriesData_priceCategories> data) {
    _priceCategories = data;
    notifyListeners();
  }

  List<PriceModel> prices = [];
  List<ProductVariantModel> _products = [];

  List<ProductVariantModel> get products => _products;
  List<VariantDetailsModel> _vehicles = [];

  List<VariantDetailsModel> get vehicles => _vehicles;

  set products(List<ProductVariantModel> data) {
    _products = data;
    notifyListeners();
  }

  set vehicles(List<VariantDetailsModel> data) {
    _vehicles = data;
    notifyListeners();
  }

  final InventoryRepository _inventoryRepository = InventoryRepository();

  List<DealerStockModel> _vehicleDealers = [];

  List<DealerStockModel> get vehicleDealers => _vehicleDealers;

  set vehicleDealers(List<DealerStockModel> data) {
    _vehicleDealers = data;
    notifyListeners();
  }

  List<DealerStockModel>? _testDriveStock;

  List<DealerStockModel>? get testDriveStock => _testDriveStock;

  set testDriveStock(List<DealerStockModel>? value) {
    _testDriveStock = value;
    notifyListeners();
  }

  List<DealerStockModel> _productDealers = [];

  List<DealerStockModel> get productDealers => _productDealers;

  set productDealers(List<DealerStockModel> data) {
    _productDealers = data;
    notifyListeners();
  }

  Future<void> init() async {
    await Future.wait([
      getStocks(),
      getPriceCategories(),
      getVehicles(),
      getProducts(),
      getTestDriveStock(),
      getProductStocks(),
    ]);
  }

  Timer? _inventoryDebounce;

  late TextEditingController inventorySearchController = TextEditingController()
    ..addListener(() {
      _inventoryDebounce?.cancel();
      _inventoryDebounce = Timer(const Duration(milliseconds: 500), () {
        getVehicles();
      });
    });

  Timer? _myStockDebounce;

  late TextEditingController myStockSearchController = TextEditingController()
    ..addListener(() {
      _myStockDebounce?.cancel();
      _myStockDebounce = Timer(const Duration(milliseconds: 500), () {
        getStocks();
      });
    });

  Future<void> getProducts() async {
    try {
      final getProduct = await _inventoryRepository.getProducts(
        search: inventorySearchController.text,
        skip: 0,
        take: 15,
      );
      _handleProductsResponse(getProduct);
    } catch (e) {
       _handleError(e, 'Error while fetching list of products');
    }
  }

  Future<void> getPaginatedProducts() async {
    try {
      if (isCallInProgress) {
        return;
      }
      isCallInProgress = true;
      final response = await _inventoryRepository.getProducts(
        take: 15,
        skip: prices.length,
        search: inventorySearchController.text,
      );
      _handleProductsResponse(response);
    } catch (e) {
      _handleError(e, 'Error while fetching list of products');
    } finally {
      isCallInProgress = false;
    }
  }

  Future<void> getVehicles() async {
    try {
      final getVehicles = await _inventoryRepository.getVehicles(
        search: inventorySearchController.text,
        skip: 0,
        take: 15,
      );

      if (getVehicles.$2 != null) {
        count = getVehicles.$1;
        vehicles = getVehicles.$2!;
      } else {
        await AppRoutes.showErrorSnackbar(
          message: 'Error while fetching list of vehicles',
        );
      }
    } catch (e) {
      e.log();
    }
  }

  int count = 0;

  bool isCallInProgress = false;

  Future<void> getPaginatedVehicles() async {
    try {
      if (isCallInProgress) {
        return;
      }
      isCallInProgress = true;
      final response = await _inventoryRepository.getVehicles(
        take: 15,
        skip: vehicles.length,
        search: inventorySearchController.text,
      );

      if (response.$2 != null) {
        vehicles.addAll(response.$2!);
        notifyListeners();
      }
      isCallInProgress = false;
    } catch (e) {
      e.log();
    }
  }

  Future<void> getPriceCategories() async {
    try {
      final result = await _inventoryRepository.getPriceCategories();
      prices = result
          .map(
            (e) => PriceModel(
              price: 0,
              type: e.id,
              name: e.name!,
              priceId: '',
            ),
          )
          .toList();
      priceCategories = result;
    } catch (e) {
      e.log();
    }
  }

  Future<void> createStockRequest({
    required String colorId,
    required String variantId,
    required List<PriceModel> prices,
    required List<String> guarantees,
  }) async {
    unawaited(AppRoutes.showLoadingDialog());
    try {
      final result = await _inventoryRepository.createStockRequest(
        variantId: variantId,
        colorId: colorId,
        prices: prices,
        guarantees: guarantees,
      );
      await getStocks();
      await getVehicles();
      if (result) {
        await AppRoutes.showSuccessSnackbar(
          message: 'Request added successfully',
        );
      } else {
        await AppRoutes.showErrorSnackbar(
          message: 'Failed to add vehicle request',
        );
      }
    } catch (e) {
      e.log();
      await AppRoutes.showErrorSnackbar(message: 'Failed to add vehicle');
    }
    AppRoutes.pop();
  }

  Future<void> updateStockRequest({
    required String colorId,
    required String variantId,
    required int quantity,
    required String type,
    bool product = false,
  }) async {
    try {
      bool result;

      if (product) {
        result = await _inventoryRepository.createProductDealerStockRequest(
          variantId: variantId,
          stock: quantity,
          type: type,
        );
      } else {
        result = await _inventoryRepository.updateStockRequest(
          colorId: colorId,
          variantId: variantId,
          stock: quantity,
          type: type,
        );
      }

      if (result) {
        if (product) {
          await getVehicles();
        } else {
          await getProductStocks();
        }
        await AppRoutes.showSuccessSnackbar(
          message: 'Request Created Successfully',
        );
      } else {
        await AppRoutes.showErrorSnackbar(
          message: 'Error while Adding Item to Stock',
        );
      }
    } catch (e) {
      e.log();
    }
  }

  Future<void> _handleProductsResponse(
    (int, List<ProductVariantModel>?) response,
  ) async {
    final tuple = response;
    if (tuple.$2 != null) {
      count = tuple.$1;
      products = tuple.$2!;
    } else {
      await AppRoutes.showErrorSnackbar(
        message: 'Error while fetching list of products',
      );
    }
  }

  Future<void> _handleError(dynamic e, String message) async {
    e.log();
    await AppRoutes.showErrorSnackbar(
      message: message,
    );
  }

  ProductVariantModel _mapToProductModel(Map<String, dynamic> productJson) {
    // Logic to map JSON to ProductDetailsModel
    return ProductVariantModel.productFromJson(productJson);
  }

  Future<int> getInventoryCount() async {
    try {
      final result = await _inventoryRepository.getStockCount();
      return result;
    } catch (e) {
      e.log();
      return 0;
    }
  }

  Future<void> getStocks() async {
    try {
      final result = await _inventoryRepository.currentStock(
        text: myStockSearchController.text,
      );

      vehicleDealers = result;
    } catch (e) {
      e.log();
      await AppRoutes.showErrorSnackbar(
        message: 'Error while fetching list of vehicles',
      );
    }
  }

  Future<void> getProductStocks() async {
    try {
      final result = await _inventoryRepository.currentProductStock(
        text: myStockSearchController.text,
      );

      productDealers = result;
    } catch (e) {
      e.log();
      await AppRoutes.showErrorSnackbar(
        message: 'Error while fetching list of vehicles',
      );
    }
  }

  Future<void> updateVehicleDealer({
    required int index,
    required String id,
    required List<String> guarantees,
    List<PriceModel>? prices,
  }) async {
    try {
      final result = await _inventoryRepository.updateVehicleDealer(
        dealerId: id,
        guarantees: guarantees,
        prices: prices,
      );
      vehicleDealers[index] = result;
      notifyListeners();
      await AppRoutes.showSuccessSnackbar(
        message: 'Request Updated Successfully',
      );
    } catch (e) {
      e.log();
    }
  }

  Future<void> createProductStockRequest({
    required String variantId,
    required List<PriceModel> prices,
    required List<String> guarantees,
  }) async {
    unawaited(AppRoutes.showLoadingDialog());
    try {
      final result = await _inventoryRepository.createProductStockRequest(
        variantId: variantId,
        prices: prices,
        guarantees: guarantees,
      );
      await getProductStocks();
      await getProducts();
      if (result) {
        await AppRoutes.showSuccessSnackbar(
          message: 'Request added successfully',
        );
      } else {
        await AppRoutes.showErrorSnackbar(
          message: 'Failed to add vehicle request',
        );
      }
    } catch (e) {
      e.log();
      await AppRoutes.showErrorSnackbar(message: 'Failed to add vehicle');
    }
    AppRoutes.pop();
  }

  Future<void> updateProductDealer({
    required int index,
    required String id,
    required List<String> guarantees,
    List<PriceModel>? prices,
  }) async {
    try {
      final result = await _inventoryRepository.updateProductDealer(
        dealerId: id,
        guarantees: guarantees,
        prices: prices,
      );
      productDealers[index] = result;
      notifyListeners();
      await AppRoutes.showSuccessSnackbar(
        message: 'Request Updated Successfully',
      );
    } catch (e) {
      e.log();
    }
  }

  int totalTestDriveCount = 0;

  Future<void> getTestDriveStock() async {
    final stocks = await _inventoryRepository.getTestDriveStock(
        skip: 0, take: 15, query: inventorySearchController.text);
    totalTestDriveCount = stocks.$1;
    testDriveStock = stocks.$2;
  }

  Future<void> getMoreTestDriveStock() async {
    if (isCallInProgress) {
      return;
    }
    isCallInProgress = true;
    final stocks = await _inventoryRepository.getTestDriveStock(
        skip: testDriveStock?.length ?? 0,
        take: 15,
        query: inventorySearchController.text);
    if (testDriveStock != null) {
      testDriveStock!.addAll(stocks.$2);
      notifyListeners();
    } else {
      testDriveStock = stocks.$2;
    }
    isCallInProgress = false;
  }

  Future<void> addTestDriveDealerStock(
      {required String variantId,
      required String? colorId,
      required String amount,
      String? testDriveDealerId,
      int? index}) async {
    try {
      final result = await _inventoryRepository.addToTestDriveStock(
          colorId: colorId,
          variantId: variantId,
          amount: amount,
          testDriveDealerId: testDriveDealerId);
      if (result != null) {
        if (index != null && testDriveStock != null) {
          testDriveStock![index] = result;
          notifyListeners();
        } else {
          getTestDriveStock();
        }
        AppRoutes.showSuccessSnackbar(message: 'Stock Added successfully');
      } else {
        AppRoutes.showErrorSnackbar(message: 'Failed to add stock');
      }
    } catch (e) {
      e.log();
    }
  }
}
