import 'dart:async';

import 'package:dealerapp/src/app/model/dealer_stock_model.dart';
import 'package:dealerapp/src/app/model/product_details_model.dart';
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
  List<ProductVariantModel>? _products = [];

  List<ProductVariantModel>? get products => _products;
  List<ProductVariantModel>? _vehicles = [];

  List<ProductVariantModel>? get vehicles => _vehicles;

  set products(List<ProductVariantModel>? data) {
    _products = data;
    notifyListeners();
  }

  set vehicles(List<ProductVariantModel>? data) {
    _vehicles = data;
    notifyListeners();
  }

  final InventoryRepository _inventoryRepository = InventoryRepository();

  List<DealerStockModel>? _vehicleDealers = [];

  List<DealerStockModel>? get vehicleDealers => _vehicleDealers;

  set vehicleDealers(List<DealerStockModel>? data) {
    _vehicleDealers = data;
    notifyListeners();
  }

  List<DealerStockModel>? _testDriveStock;

  List<DealerStockModel>? get testDriveStock => _testDriveStock;

  set testDriveStock(List<DealerStockModel>? value) {
    _testDriveStock = value;
    notifyListeners();
  }

  List<DealerStockModel>? _productDealers = [];

  List<DealerStockModel>? get productDealers => _productDealers;

  set productDealers(List<DealerStockModel>? data) {
    _productDealers = data;
    notifyListeners();
  }

  int productDealersCount = 0;

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

  late TextEditingController inventorySearchController =
      TextEditingController();

  void onSearchTextChanged({required Function() onSearch}) {
    if (_inventoryDebounce?.isActive ?? false) {
      _inventoryDebounce?.cancel();
    }
    _inventoryDebounce = Timer(const Duration(milliseconds: 700), () {
      onSearch();
    });
  }

  Future<void> getProducts() async {
    try {
      products = null;
      final getProduct = await _inventoryRepository.getProducts(
        search: inventorySearchController.text,
        skip: 0,
        take: 15,
        brands: selectedBrands,
        types: selectedTypes,
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
        skip: products?.length ?? 0,
        search: inventorySearchController.text,
        brands: selectedBrands,
        types: selectedTypes,
      );
      if (products != null) {
        products!.addAll(response.$2 ?? []);
        notifyListeners();
      } else {
        products = response.$2;
      }
    } catch (e) {
      _handleError(e, 'Error while fetching list of products');
    } finally {
      isCallInProgress = false;
    }
  }

  Future<void> getVehicles() async {
    try {
      vehicles = null;
      final getVehicles = await _inventoryRepository.getVehicles(
        search: inventorySearchController.text,
        skip: 0,
        take: 15,
        brands: selectedBrands,
        types: selectedTypes,
      );
      if (getVehicles.$2 != null) {
        vehiclesCount = getVehicles.$1;
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

  int vehiclesCount = 0;
  int productsCount = 0;

  bool isCallInProgress = false;

  Future<void> getPaginatedVehicles() async {
    try {
      if (isCallInProgress) {
        return;
      }
      isCallInProgress = true;
      final response = await _inventoryRepository.getVehicles(
        take: 15,
        skip: vehicles?.length ?? 0,
        search: inventorySearchController.text,
        brands: selectedBrands,
        types: selectedTypes,
      );

      if (response.$2 != null) {
        if (vehicles != null) {
          vehicles?.addAll(response.$2!);
        } else {
          vehicles = response.$2!;
        }
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
              originalAmount: 0,
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
        if (!product) {
          await Future.wait([getVehicles(), getTestDriveStock()]);
        } else {
          await Future.wait([getProducts(), getProductStocks()]);
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
      productsCount = tuple.$1;
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

  Future<int> getInventoryCount() async {
    try {
      final result = await _inventoryRepository.getStockCount();
      return result;
    } catch (e) {
      e.log();
      return 0;
    }
  }

  int vehicleStockCount = 0;

  Future<void> getStocks() async {
    try {
      final result = await _inventoryRepository.currentStock(
        text: inventorySearchController.text,
        brands: selectedBrands,
        types: selectedTypes,
      );
      vehicleStockCount = result.$1;
      vehicleDealers = result.$2;
    } catch (e) {
      e.log();
      await AppRoutes.showErrorSnackbar(
        message: 'Error while fetching list of vehicles',
      );
    }
  }

  Future<void> getMoreStock() async {
    if (isCallInProgress) {
      return;
    }
    isCallInProgress = true;
    final result = await _inventoryRepository.currentStock(
      text: inventorySearchController.text,
      brands: selectedBrands,
      types: selectedTypes,
      skip: vehicleDealers?.length ?? 0,
      take: 15,
    );
    if (vehicleDealers != null) {
      vehicleDealers?.addAll(result.$2);
    } else {
      vehicleDealers = result.$2;
    }
    isCallInProgress = false;
  }

  Future<void> getProductStocks() async {
    try {
      final result = await _inventoryRepository.currentProductStock(
        text: inventorySearchController.text,
        brands: selectedBrands,
        types: selectedTypes,
      );
      productDealersCount = result.$1;
      productDealers = result.$2;
    } catch (e) {
      e.log();
      await AppRoutes.showErrorSnackbar(
        message: 'Error while fetching list of vehicles',
      );
    }
  }

  Future<void> getMoreProductStock() async {
    if (isCallInProgress) {
      return;
    }
    isCallInProgress = true;
    final result = await _inventoryRepository.currentProductStock(
      text: inventorySearchController.text,
      brands: selectedBrands,
      types: selectedTypes,
      skip: productDealers?.length ?? 0,
      take: 15,
    );
    if (productDealers != null) {
      productDealers?.addAll(result.$2);
    } else {
      productDealers = result.$2;
    }

    isCallInProgress = false;
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
      if (vehicleDealers != null) {
        vehicleDealers![index] = result;
      } else {
        getStocks();
      }
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
      if (productDealers != null) {
        productDealers![index] = result;
      } else {
        getProductStocks();
      }
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
        skip: 0,
        take: 15,
        query: inventorySearchController.text,
        brands: selectedBrands,
        types: selectedTypes);
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

  /// Filter Logic
  ///
  bool _filterLoading = false;

  bool get filterLoading => _filterLoading;
  set filterLoading(bool value) {
    _filterLoading = value;
    notifyListeners();
  }

  bool isFilterApplied = false;

  List<String> vehicleTypes = [];
  List<String> vehicleBrands = [];
  List<String> productTypes = [];
  List<String> productBrands = [];

  List<String> selectedTypes = [];
  List<String> selectedBrands = [];

  void toggleType(String type) {
    if (selectedTypes.contains(type)) {
      selectedTypes.remove(type);
    } else {
      selectedTypes.add(type);
    }

    notifyListeners();
  }

  void toggleBrand(String brand) {
    if (selectedBrands.contains(brand)) {
      selectedBrands.remove(brand);
    } else {
      selectedBrands.add(brand);
    }
    notifyListeners();
  }

  void clearFilters(int tab) {
    selectedTypes.clear();
    selectedBrands.clear();
    isFilterApplied = false;
    getDatabasedonTab(tab);
    notifyListeners();
  }

  Future<void> getProductFilterData() async {
    filterLoading = true;
    final result = await _inventoryRepository.getProductData();
    productTypes = result.$1;
    productBrands = result.$2;
    filterLoading = false;
  }

  Future<void> getVehicleFilterData() async {
    filterLoading = true;
    final result = await _inventoryRepository.getVehicleData();
    vehicleTypes = result.$1;
    vehicleBrands = result.$2;
    filterLoading = false;
  }

  Future<void> applyFilter(int currentTab) async {
    isFilterApplied = true;
    getDatabasedonTab(currentTab);
  }

  Future<void> getDatabasedonTab(int tab) async {
    switch (tab) {
      case 0:
        getVehicles();
        break;
      case 1:
        getStocks();
        break;
      case 2:
        getTestDriveStock();
        break;
      case 3:
        getProducts();
        break;
      case 4:
        getProductStocks();
        break;
    }
  }
}
