import 'dart:async';

import 'package:dealerapp/src/app/model/dealer_stock_model.dart';
import 'package:dealerapp/src/app/repository/stockRequest/stock_repository.dart';
import 'package:dealerapp/src/utils/global_exports.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StockProvider extends ChangeNotifier {
  final StockRepository _stockRepository = StockRepository();
  List<DealerStockModel>? _products = [];
  List<DealerStockModel>? _vehicles = [];

  List<DealerStockModel>? get products => _products;
  List<DealerStockModel>? get vehicles => _vehicles;

  TextEditingController searchController = TextEditingController();

  Timer? _debounce;

  void onSearchTextChanged({required bool isProduct}) {
    if (_debounce?.isActive ?? false) {
      _debounce!.cancel();
    }
    _debounce = Timer(const Duration(milliseconds: 500), () {
      if (isProduct) {
        getProductStock();
      } else {
        getVehicleStock();
      }
    });
  }

  int productCount = 0;

  int vehicleCount = 0;

  bool isCallInProgress = false;

  set products(List<DealerStockModel>? data) {
    _products = data;
    notifyListeners();
  }

  set vehicles(List<DealerStockModel>? data) {
    _vehicles = data;
    notifyListeners();
  }

  Future<void> init() async {
    await getProductStock();
    await getVehicleStock();
  }

  Future<void> getProductStock() async {
    final getProduct = await _stockRepository.getProductStock(
      skip: 0,
      take: 15,
      query: searchController.text,
    );
    productCount = getProduct.$1;
    products = getProduct.$2;
  }

  Future<void> getVehicleStock() async {
    final getVehicles = await _stockRepository.getVehicleStock(
      skip: 0,
      take: 15,
      query: searchController.text,
    );
    vehicleCount = getVehicles.$1;
    vehicles = getVehicles.$2;
  }

  Future<void> getMoreProducts() async {
    if (isCallInProgress) {
      return;
    }
    isCallInProgress = true;
    final getProduct = await _stockRepository.getProductStock(
      skip: products?.length ?? 0,
      take: 15,
      query: searchController.text,
    );
    productCount = getProduct.$1;
    products!.addAll(getProduct.$2);
    isCallInProgress = false;
    notifyListeners();
  }

  Future<void> getMoreVehicles() async {
    if (isCallInProgress) {
      return;
    }
    final getVehicles = await _stockRepository.getVehicleStock(
      skip: vehicles?.length ?? 0,
      take: 15,
      query: searchController.text,
    );
    vehicleCount = getVehicles.$1;
    vehicles!.addAll(getVehicles.$2);
    isCallInProgress = false;
    notifyListeners();
  }
}
