import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/app/provider/order_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Dashboard Provider
/// This provider is used manage the home page with bottom navigation bar
class HomePageProvider extends ChangeNotifier {
  HomePageProvider(this.ref);
  final Ref ref;

  ///Page index
  int _pageIndex = 0;

  ///Page index
  int get pageIndex => _pageIndex;
  set pageIndex(int pageIndex) {
    _pageIndex = pageIndex;
    notifyListeners();
  }

  int _inventoryCount = 0;
  int get inventoryCount => _inventoryCount;
  set inventoryCount(int inventoryCount) {
    _inventoryCount = inventoryCount;
    notifyListeners();
  }

  int _testOrderCount = 0;
  int get testOrderCount => _testOrderCount;
  set testOrderCount(int testOrderCount) {
    _testOrderCount = testOrderCount;
    notifyListeners();
  }

  int _productCount = 0;
  int get productCount => _productCount;
  set productCount(int productCount) {
    _productCount = productCount;
    notifyListeners();
  }

  int _purchaseCount = 0;
  int get purchaseCount => _purchaseCount;
  set purchaseCount(int purchaseCount) {
    _purchaseCount = purchaseCount;
    notifyListeners();
  }

  Future<void> onInit() async {
    inventoryCount = await ref.read(inventoryProvider).getInventoryCount();
    testOrderCount = (await ref
        .read(orderProvider(OrderFamily.testDriveOrders))
        .getTestDrivePendingOrdersCount());
    purchaseCount = (await ref
            .read(orderProvider(OrderFamily.purchaseOrders))
            .getPendingOrders())
        .length;
    productCount = (await ref
        .read(orderProvider(OrderFamily.productOrders))
        .getProductPendingOrders())
        .length;
    Future.delayed(const Duration(seconds: 10), () {
      onInit();
    });
  }

  ///Page controller
}
