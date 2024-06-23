import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:dealerapp/src/app/repository/stockRequest/graphql/__generated__/stock.data.gql.dart';
import 'package:dealerapp/src/app/repository/stockRequest/stock_repository.dart';
import 'package:dealerapp/src/app/model/product_details_model.dart';
import 'package:dealerapp/src/app/model/variant_details.model.dart';
import 'package:dealerapp/src/app/repository/inventory/graphql/__generated__/inventory.data.gql.dart';
import 'package:dealerapp/src/app/repository/inventory/inventory_repository.dart';
import 'package:dealerapp/src/utils/extensions.dart';
import 'package:dealerapp/src/utils/global_exports.dart';

class StockProvider extends ChangeNotifier {
  List<GProductDealerStockRequestsData_productDealerStockRequests> _productStock = [];
  List<GProductDealerStockRequestsData_productDealerStockRequests> get productStock => _productStock;
  set productStock(List<GProductDealerStockRequestsData_productDealerStockRequests> data) {
    _productStock = data;
    notifyListeners();
  }

  List<GVehicleDealersData_vehicleDealers> _vehicleStock = [];
  List<GVehicleDealersData_vehicleDealers> get vehicleStock => _vehicleStock;
  set vehicleStock(List<GVehicleDealersData_vehicleDealers> data) {
    _vehicleStock = data;
    notifyListeners();
  }

  final stockRepository _stockRepository = stockRepository();

  late int _productSkip = 0; // Initial skip value for product pagination
  late int _productTake = 15; // Number of items to fetch initially

  // Controllers for search functionality
  late TextEditingController productSearchController = TextEditingController();
  late TextEditingController vehicleSearchController = TextEditingController();

  // Debounce timers for search
  Timer? _productDebounce;
  Timer? _vehicleDebounce;

  StockProvider() {
    // Initialize controllers with listeners
    productSearchController.addListener(_onProductSearchChanged);
    vehicleSearchController.addListener(_onVehicleSearchChanged);
  }

  void _onProductSearchChanged() {
    _productDebounce?.cancel();
    _productDebounce = Timer(const Duration(milliseconds: 500), () {
      getProductStock(searchText: productSearchController.text);
    });
  }

  void _onVehicleSearchChanged() {
    _vehicleDebounce?.cancel();
    _vehicleDebounce = Timer(const Duration(milliseconds: 500), () {
      getVehicleStock(searchText: vehicleSearchController.text);
    });
  }

  Future<void> init() async {
    await getProductStock();
    await getVehicleStock();
  }

  Future<void> getProductStock({String searchText = ''}) async {
    try {
      var productStock = await _stockRepository.getProductStock(searchText: searchText);
      productStock = productStock;
    } catch (e) {
      _handleError(e, 'Error while fetching product stock');
    }
  }

  Future<void> getVehicleStock({String searchText = ''}) async {
    try {
      var vehicleStock = await _stockRepository.getVehicleStock(searchText: searchText);
      vehicleStock = vehicleStock;
    } catch (e) {
      _handleError(e, 'Error while fetching vehicle stock');
    }
  }

  Future<void> getPaginatedProducts() async {
    try {
      if (_productSkip >= _productStock.length) {
        return; // Prevent unnecessary calls if already at end
      }

      final response = await _stockRepository.getProductStock(
        searchText: productSearchController.text,

      );

      if (response.isNotEmpty) {
        _productStock.addAll(response as Iterable<GProductDealerStockRequestsData_productDealerStockRequests>);
        _productSkip += _productTake;
        notifyListeners();
      }
    } catch (e) {
      _handleError(e, 'Error while fetching paginated products');
    }
  }

  Future<void> _handleError(dynamic e, String message) async {
    e.log();
    await AppRoutes.showErrorSnackbar(
      message: message,
    );
  }

  @override
  void dispose() {
    // Clean up controllers when the provider is disposed
    productSearchController.dispose();
    vehicleSearchController.dispose();
    super.dispose();
  }
}
