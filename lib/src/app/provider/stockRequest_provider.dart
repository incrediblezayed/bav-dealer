import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:dealerapp/src/app/repository/stockRequest/stock_repository.dart';
import 'package:dealerapp/src/utils/extensions.dart';
import 'package:dealerapp/src/utils/global_exports.dart';

class StockProvider extends ChangeNotifier {
  final StockRepository _stockRepository = StockRepository();
  List<Map<String, dynamic>> _products = [];
  List<Map<String, dynamic>> _vehicles = [];

  List<Map<String, dynamic>> get products => _products;
  List<Map<String, dynamic>> get vehicles => _vehicles;

  set products(List<Map<String, dynamic>> data) {
    _products = data;
    notifyListeners();
  }

  set vehicles(List<Map<String, dynamic>> data) {
    _vehicles = data;
    notifyListeners();
  }

  Future<void> init() async {
    await getProductStock();
    await getVehicleStock();
  }

  Future<void> getProductStock() async {
    try {
      final getProduct = await _stockRepository.getProductStock();
      _handleProductsResponse(getProduct as List<Map<String, dynamic>>);
    } catch (e) {
      _handleError(e, 'Error while fetching list of products');
    }
  }

  Future<void> getVehicleStock() async {
    try {
      final getVehicles = await _stockRepository.getVehicleStock(skip: 0, take: 15);
      _handleVehiclesResponse(getVehicles as List<Map<String, dynamic>>);
    } catch (e) {
      _handleError(e, 'Error while fetching list of vehicles');
    }
  }

  Future<void> _handleProductsResponse(List<Map<String, dynamic>> response) async {
    if (response.isNotEmpty) {
      products = response;
    } else {
      await AppRoutes.showErrorSnackbar(message: 'Error while fetching list of products');
    }
  }

  Future<void> _handleVehiclesResponse(List<Map<String, dynamic>> response) async {
    if (response.isNotEmpty) {
      vehicles = response;
    } else {
      await AppRoutes.showErrorSnackbar(message: 'Error while fetching list of vehicles');
    }
  }

  Future<void> _handleError(dynamic e, String message) async {
    e.log();
    await AppRoutes.showErrorSnackbar(message: message);
  }
}
