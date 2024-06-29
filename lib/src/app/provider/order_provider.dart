import 'dart:async';

import 'package:dealerapp/src/app/model/variant_details.model.dart';
import 'package:dealerapp/src/app/repository/orders/graphql/__generated__/orders.data.gql.dart';
import 'package:dealerapp/src/app/repository/orders/orders_repository.dart';
import 'package:dealerapp/src/utils/app_routes.dart';
import 'package:dealerapp/src/utils/extensions.dart';
import 'package:flutter/material.dart';

enum OrderFamily { purchaseOrders, testDriveOrders, productOrders }

enum OrderStatus {
  pending('created'),
  accepted('accepted'),
  rejected('rejected'),
  inTransit('in-transit'),
  delivered('delivered'),
  cancelled('cancelled');

  const OrderStatus(this.name);
  final String name;
}

class OrdersProvider extends ChangeNotifier {
  final OrderRepository _orderRepository = OrderRepository();

  OrderFamily orderFamily;

  OrdersProvider({required this.orderFamily});

  bool isInPage = false;

  bool _loading = true;
  bool get loading => _loading;

  ///
  set loading(bool data) {
    _loading = data;
    notifyListeners();
  }

  VariantDetailsModel? _selectedVehicle;

  ///
  VariantDetailsModel? get selectedVehicle => _selectedVehicle;

  ///
  set selectedVehicle(VariantDetailsModel? data) {
    _selectedVehicle = data;
    notifyListeners();
  }

  VariantDetailsModel? _selectedVariants;

  ///
  VariantDetailsModel? get selectedVariants => _selectedVariants;
  set selectedVariants(VariantDetailsModel? data) {
    _selectedVariants = data;
    notifyListeners();
  }

  VehicleColor? _selectedColor;
  VehicleColor? get selectedColor => _selectedColor;
  set selectedColor(VehicleColor? data) {
    _selectedColor = data;
    notifyListeners();
  }

/*   List<Vehicle> _vehicles = [];
  List<Vehicle> get vehicles => _vehicles;
  set vehicles(List<Vehicle> data) {
    _vehicles = data;
    notifyListeners();
  } */

  List<GProductOrdersData_productOrders> _productpendingOrders = [];
  List<GProductOrdersData_productOrders> get productpendingOrders =>
      _productpendingOrders;
  set productpendingOrders(List<GProductOrdersData_productOrders> data) {
    _productpendingOrders = data;
    notifyListeners();
  }

  List<GVehicleOrdersData_vehicleOrders> _pendingOrders = [];
  List<GVehicleOrdersData_vehicleOrders> get pendingOrders => _pendingOrders;
  set pendingOrders(List<GVehicleOrdersData_vehicleOrders> data) {
    _pendingOrders = data;
    notifyListeners();
  }

  List<GTestDriveOrdersData_testDriveOrders> _testDrivePendingOrders = [];
  List<GTestDriveOrdersData_testDriveOrders> get testDrivePendingOrders =>
      _testDrivePendingOrders;
  set testDrivePendingOrders(List<GTestDriveOrdersData_testDriveOrders> data) {
    _testDrivePendingOrders = data;
    notifyListeners();
  }

  List<GProductOrdersData_productOrders> _productacceptedOrders = [];
  List<GProductOrdersData_productOrders> get productacceptedOrders =>
      _productacceptedOrders;
  set productacceptedOrders(List<GProductOrdersData_productOrders> data) {
    _productacceptedOrders = data;
    notifyListeners();
  }

  List<GVehicleOrdersData_vehicleOrders> _acceptedOrders = [];
  List<GVehicleOrdersData_vehicleOrders> get acceptedOrders => _acceptedOrders;
  set acceptedOrders(List<GVehicleOrdersData_vehicleOrders> data) {
    _acceptedOrders = data;
    notifyListeners();
  }

  List<GTestDriveOrdersData_testDriveOrders> _testDriveAcceptedOrders = [];
  List<GTestDriveOrdersData_testDriveOrders> get testDriveAcceptedOrders =>
      _testDriveAcceptedOrders;
  set testDriveAcceptedOrders(List<GTestDriveOrdersData_testDriveOrders> data) {
    _testDriveAcceptedOrders = data;
    notifyListeners();
  }

  List<GProductOrdersData_productOrders> _productrejectedOrders = [];
  List<GProductOrdersData_productOrders> get productrejectedOrders =>
      _productrejectedOrders;
  set productrejectedOrders(List<GProductOrdersData_productOrders> data) {
    _productrejectedOrders = data;
    notifyListeners();
  }

  List<GVehicleOrdersData_vehicleOrders> _rejectedOrders = [];
  List<GVehicleOrdersData_vehicleOrders> get rejectedOrders => _rejectedOrders;
  set rejectedOrders(List<GVehicleOrdersData_vehicleOrders> data) {
    _rejectedOrders = data;
    notifyListeners();
  }

  List<GTestDriveOrdersData_testDriveOrders> _testDriveRejectedOrders = [];
  List<GTestDriveOrdersData_testDriveOrders> get testDriveRejectedOrders =>
      _testDriveRejectedOrders;
  set testDriveRejectedOrders(List<GTestDriveOrdersData_testDriveOrders> data) {
    _testDriveRejectedOrders = data;
    notifyListeners();
  }

  List<GProductOrdersData_productOrders> _productdeliveredOrders = [];
  List<GProductOrdersData_productOrders> get productdeliveredOrders =>
      _productdeliveredOrders;
  set productdeliveredOrders(List<GProductOrdersData_productOrders> data) {
    _productdeliveredOrders = data;
    notifyListeners();
  }

  List<GVehicleOrdersData_vehicleOrders> _deliveredOrders = [];
  List<GVehicleOrdersData_vehicleOrders> get deliveredOrders =>
      _deliveredOrders;
  set deliveredOrders(List<GVehicleOrdersData_vehicleOrders> data) {
    _deliveredOrders = data;
    notifyListeners();
  }

  List<GTestDriveOrdersData_testDriveOrders> _testDriveDeliveredOrders = [];
  List<GTestDriveOrdersData_testDriveOrders> get testDriveDeliveredOrders =>
      _testDriveDeliveredOrders;
  set testDriveDeliveredOrders(
    List<GTestDriveOrdersData_testDriveOrders> data,
  ) {
    _testDriveDeliveredOrders = data;
    notifyListeners();
  }

  Future<void> init(OrderFamily orderFamily) async {
    //await getVehicles();

    if (orderFamily == OrderFamily.purchaseOrders) {
      await getPendingOrders();
      await getAcceptedOrders();
      await getRejectedOrders();
      await getDeliveredOrders();
    } else if (orderFamily == OrderFamily.testDriveOrders) {
      await getTestDrivePendingOrders();
      await getTestDriveAcceptedOrders();
      await getTestDriveRejectedOrders();
      await getTestDriveDeliveredOrders();
    } else if (orderFamily == OrderFamily.productOrders) {
      await getProductPendingOrders();
      await getProductAcceptedOrders();
      await getProductRejectedOrders();
      await getProductDeliveredOrders();
    }
  }

  Future<List<Object>> getProductPendingOrders() async {
    try {
      final getProductOrders =
          await _orderRepository.getProductOrders('created');

      if (getProductOrders != null) {
        productpendingOrders = getProductOrders;
        return getProductOrders;
      } else {
        await AppRoutes.showErrorSnackbar(
          message: 'Error while fetching list of vehicles',
        );
      }
    } catch (e) {
      e.log();
    } finally {
      loading = false;
    }
    return [];
  }

  Future<List<GVehicleOrdersData_vehicleOrders>> getPendingOrders() async {
    try {
      final getVehicleOrders =
          await _orderRepository.getVehicleOrders('created');

      if (getVehicleOrders != null) {
        pendingOrders = getVehicleOrders;
        return getVehicleOrders;
      } else {
        await AppRoutes.showErrorSnackbar(
          message: 'Error while fetching list of vehicles',
        );
      }
    } catch (e) {
      e.log();
    } finally {
      loading = false;
    }
    return [];
  }

  Future<int> getPendingOrdersCount() async {
    try {
      return await _orderRepository.getVehicleOrdersCount('created');
    } catch (e) {
      e.log();
      return 0;
    }
  }

  Future<List<GTestDriveOrdersData_testDriveOrders>>
      getTestDrivePendingOrders() async {
    try {
      final getTestDriveOrders =
          await _orderRepository.getTestDriveOrders('created');

      if (getTestDriveOrders != null) {
        return testDrivePendingOrders = getTestDriveOrders;
      } else {
        await AppRoutes.showErrorSnackbar(
          message: 'Error while fetching list of test order vehicles',
        );
      }
    } catch (e) {
      e.log();
    } finally {
      loading = false;
    }
    return [];
  }

  Future<int> getTestDrivePendingOrdersCount() async {
    try {
      return await _orderRepository.getTestDriveOrdersCount('created');
    } catch (e) {
      e.log();
      return 0;
    }
  }

  Future<List<Object>> getProductAcceptedOrders() async {
    try {
      final getProductOrders =
          await _orderRepository.getProductOrders('accepted');

      if (getProductOrders != null) {
        productacceptedOrders = getProductOrders;
        return getProductOrders;
      } else {
        await AppRoutes.showErrorSnackbar(
          message: 'Error while fetching list of products',
        );
      }
    } catch (e) {
      e.log();
    } finally {
      loading = false;
    }
    return [];
  }

  Future<void> getAcceptedOrders() async {
    try {
      final getVehicleOrders =
          await _orderRepository.getVehicleOrders('accepted');

      if (getVehicleOrders != null) {
        acceptedOrders = getVehicleOrders;
      } else {
        await AppRoutes.showErrorSnackbar(
          message: 'Error while fetching list of vehicles',
        );
      }
    } catch (e) {
      e.log();
    } finally {
      loading = false;
    }
  }

  Future<void> getTestDriveAcceptedOrders() async {
    try {
      final getTestDriveOrders =
          await _orderRepository.getTestDriveOrders('accepted');

      if (getTestDriveOrders != null) {
        testDriveAcceptedOrders = getTestDriveOrders;
      } else {
        await AppRoutes.showErrorSnackbar(
          message: 'Error while fetching list of accepted test orders vehicles',
        );
      }
    } catch (e) {
      e.log();
    } finally {
      loading = false;
    }
  }

  Future<List<Object>> getProductRejectedOrders() async {
    try {
      final getProductOrders =
          await _orderRepository.getProductOrders('rejected');

      if (getProductOrders != null) {
        productrejectedOrders = getProductOrders;
        return getProductOrders;
      } else {
        await AppRoutes.showErrorSnackbar(
          message: 'Error while fetching list of products',
        );
      }
    } catch (e) {
      e.log();
    } finally {
      loading = false;
    }
    return [];
  }

  Future<void> getRejectedOrders() async {
    try {
      final getVehicleOrders =
          await _orderRepository.getVehicleOrders('rejected');

      if (getVehicleOrders != null) {
        rejectedOrders = getVehicleOrders;
      } else {
        await AppRoutes.showErrorSnackbar(
          message: 'Error while fetching list of vehicles',
        );
      }
    } catch (e) {
      e.log();
    } finally {
      loading = false;
    }
  }

  Future<void> getTestDriveRejectedOrders() async {
    try {
      final getTestDriveOrders =
          await _orderRepository.getTestDriveOrders('rejected');

      if (getTestDriveOrders != null) {
        testDriveRejectedOrders = getTestDriveOrders;
      } else {
        await AppRoutes.showErrorSnackbar(
          message: 'Error while fetching list of test drive rejected vehicles',
        );
      }
    } catch (e) {
      e.log();
    }
  }

  Future<List<Object>> getProductDeliveredOrders() async {
    try {
      final getProductOrders =
          await _orderRepository.getProductOrders('delivered');

      if (getProductOrders != null) {
        productdeliveredOrders = getProductOrders;
        return getProductOrders;
      } else {
        await AppRoutes.showErrorSnackbar(
          message: 'Error while fetching list of products',
        );
      }
    } catch (e) {
      e.log();
    } finally {
      loading = false;
    }
    return [];
  }

  Future<void> getDeliveredOrders() async {
    try {
      final getVehicleOrders =
          await _orderRepository.getVehicleOrders('delivered');

      if (getVehicleOrders != null) {
        deliveredOrders = getVehicleOrders;
      } else {
        await AppRoutes.showErrorSnackbar(
          message: 'Error while fetching list of vehicles',
        );
      }
    } catch (e) {
      e.log();
    } finally {
      loading = false;
    }
  }

  Future<void> getTestDriveDeliveredOrders() async {
    try {
      final getTestDriveOrders =
          await _orderRepository.getTestDriveOrders('delivered');

      if (getTestDriveOrders != null) {
        testDriveDeliveredOrders = getTestDriveOrders;
      } else {
        await AppRoutes.showErrorSnackbar(
          message: 'Error while fetching list of delivered test drive orders',
        );
      }
    } catch (e) {
      e.log();
    }
  }

/*   Future<void> getVehicles() async {
    try {
      final getVehicles = await _inventoryRepository.getVehicles(
        skip: 0,
        take: 15,
      );

      if (getVehicles != null) {
        //vehicles = getVehicles;
      } else {
        await AppRoutes.showErrorSnackbar(
          message: 'Error while fetching list of vehicles',
        );
      }
    } catch (e) {
      e.log();
    } finally {
      loading = false;
    }
  } */

  Future<void> acceptOrder(String id) async {
    try {
      unawaited(AppRoutes.showLoadingDialog());
      final success = await _orderRepository.updateOrderStatus(
        vehicleOrderId: id,
        status: OrderStatus.accepted.name,
      );
      AppRoutes.pop();
      if (success) {
        await getPendingOrders();
        await getAcceptedOrders();
      } else {
        throw Exception();
      }
    } catch (e) {
      e.log();
      await AppRoutes.showErrorSnackbar(message: 'Failed to accept order');
    }
  }

  Future<void> acceptTestDriveOrder(String id) async {
    try {
      unawaited(AppRoutes.showLoadingDialog());
      final success = await _orderRepository.updateTestDriveOrderStatus(
        testDriveOrderId: id,
        status: OrderStatus.accepted.name,
      );
      AppRoutes.pop();
      if (success) {
        await getPendingOrders();
        await getAcceptedOrders();
      } else {
        throw Exception();
      }
    } catch (e) {
      e.log();
      await AppRoutes.showErrorSnackbar(message: 'Failed to accept order');
    }
  }

  Future<void> rejectOrder({
    required String id,
    required String reason,
    required bool isPurchaseOrder,
    String? description,
  }) async {
    try {
      unawaited(AppRoutes.showLoadingDialog());
      final success = await _orderRepository.rejectOrder(
        isPurchaseOrder: isPurchaseOrder,
        orderId: id,
        reason: reason,
        description: description,
      );
      AppRoutes.pop();
      if (success) {
        await getPendingOrders();
        await getRejectedOrders();
        await AppRoutes.showSuccessSnackbar(
          message: 'Order rejection requested',
        );
      } else {
        throw Exception();
      }
    } catch (e) {
      e.log();
      await AppRoutes.showErrorSnackbar(message: 'Failed to reject order');
    }
  }
}
