import 'package:dealerapp/src/app/repository/inventory/graphql/__generated__/inventory.data.gql.dart';
import 'package:dealerapp/src/app/repository/inventory/inventory_repository.dart';
import 'package:dealerapp/src/app/repository/orders/graphql/__generated__/orders.data.gql.dart';
import 'package:dealerapp/src/app/repository/orders/orders_repository.dart';
import 'package:dealerapp/src/utils/app_routes.dart';
import 'package:dealerapp/src/utils/extensions.dart';
import 'package:flutter/material.dart';

enum OrderFamily { purchaseOrders, testDriveOrders }

enum OrderStatus {
  pending('created'),
  accepted('accepted'),
  rejected('rejected'),
  inTransit('in-transit'),
  delivered('delivered'),
  cancelled('cancelled');

  final String name;
  const OrderStatus(this.name);
}

class OrdersProvider extends ChangeNotifier {
  final InventoryRepository _inventoryRepository = InventoryRepository();
  final OrderRepository _orderRepository = OrderRepository();

  bool _loading = true;
  bool get loading => _loading;

  ///
  set loading(bool data) {
    _loading = data;
    notifyListeners();
  }

  GVehiclesData_vehicles? _selectedVehicle;

  ///
  GVehiclesData_vehicles? get selectedVehicle => _selectedVehicle;

  ///
  set selectedVehicle(GVehiclesData_vehicles? data) {
    _selectedVehicle = data;
    notifyListeners();
  }

  GVehiclesData_vehicles_variants? _selectedVariants;

  ///
  GVehiclesData_vehicles_variants? get selectedVariants => _selectedVariants;
  set selectedVariants(GVehiclesData_vehicles_variants? data) {
    _selectedVariants = data;
    notifyListeners();
  }

  GVehiclesData_vehicles_variants_colors? _selectedColor;
  GVehiclesData_vehicles_variants_colors? get selectedColor => _selectedColor;
  set selectedColor(GVehiclesData_vehicles_variants_colors? data) {
    _selectedColor = data;
    notifyListeners();
  }

  List<GVehiclesData_vehicles> _vehicles = [];
  List<GVehiclesData_vehicles> get vehicles => _vehicles;
  set vehicles(List<GVehiclesData_vehicles> data) {
    _vehicles = data;
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
      List<GTestDriveOrdersData_testDriveOrders> data,) {
    _testDriveDeliveredOrders = data;
    notifyListeners();
  }

  Future<void> init(OrderFamily orderFamily) async {
    await getVehicles();

    if (orderFamily == OrderFamily.purchaseOrders) {
      await getPendingOrders();
      await getAcceptedOrders();
      await getRejectedOrders();
      await getDeliveredOrders();
    } else {
      await getTestDrivePendingOrders();
      await getTestDriveAcceptedOrders();
      await getTestDriveRejectedOrders();
      await getTestDriveDeliveredOrders();
    }
  }

  Future<void> getPendingOrders() async {
    try {
      final getVehicleOrders =
          await _orderRepository.getVehicleOrders('created');

      if (getVehicleOrders != null) {
        pendingOrders = getVehicleOrders;
      } else {
        AppRoutes.showErrorSnackbar(
          message: 'Errow while fetching list of vehicles',
        );
      }
    } catch (e) {
      e.log();
    } finally {
      loading = false;
    }
  }

  Future<void> getTestDrivePendingOrders() async {
    try {
      final getTestDriveOrders =
          await _orderRepository.getTestDriveOrders('created');

      if (getTestDriveOrders != null) {
        testDrivePendingOrders = getTestDriveOrders;
      } else {
        AppRoutes.showErrorSnackbar(
            message: 'Error while fetching list of test order vehicles',);
      }
    } catch (e) {
      e.log();
    } finally {
      loading = false;
    }
  }

  Future<void> getAcceptedOrders() async {
    try {
      final getVehicleOrders =
          await _orderRepository.getVehicleOrders('accepted');

      if (getVehicleOrders != null) {
        acceptedOrders = getVehicleOrders;
      } else {
        AppRoutes.showErrorSnackbar(
          message: 'Errow while fetching list of vehicles',
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
        AppRoutes.showErrorSnackbar(
          message: 'Errow while fetching list of accepted test orders vehicles',
        );
      }
    } catch (e) {
      e.log();
    } finally {
      loading = false;
    }
  }

  Future<void> getRejectedOrders() async {
    try {
      final getVehicleOrders =
          await _orderRepository.getVehicleOrders('rejected');

      if (getVehicleOrders != null) {
        rejectedOrders = getVehicleOrders;
      } else {
        AppRoutes.showErrorSnackbar(
          message: 'Errow while fetching list of vehicles',
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
        AppRoutes.showErrorSnackbar(
          message: 'Errow while fetching list of test drive rejected vehicles',
        );
      }
    } catch (e) {
      e.log();
    }
  }

  Future<void> getDeliveredOrders() async {
    try {
      final getVehicleOrders =
          await _orderRepository.getVehicleOrders('delivered');

      if (getVehicleOrders != null) {
        deliveredOrders = getVehicleOrders;
      } else {
        AppRoutes.showErrorSnackbar(
          message: 'Errow while fetching list of vehicles',
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
        AppRoutes.showErrorSnackbar(
          message: 'Errow while fetching list of delivered test drive orders',
        );
      }
    } catch (e) {
      e.log();
    }
  }

  Future<void> getVehicles() async {
    try {
      final getVehicles = await _inventoryRepository.getVehicles();

      if (getVehicles != null) {
        vehicles = getVehicles;
      } else {
        AppRoutes.showErrorSnackbar(
          message: 'Errow while fetching list of vehicles',
        );
      }
    } catch (e) {
      e.log();
    } finally {
      loading = false;
    }
  }

  Future<void> acceptOrder(String id) async {
    try {
      final success = await _orderRepository.updateOrderStatus(
          vehicleOrderId: id, status: OrderStatus.accepted.name,);
      if (success) {
        await getPendingOrders();
        await getAcceptedOrders();
      } else {
        throw Exception();
      }
    } catch (e) {
      e.log();
      AppRoutes.showErrorSnackbar(message: 'Failed to accept order');
    }
  }

  Future<void> rejectOrder(String id, String reason, bool isPurchaseOrder,
      [String? description,]) async {
    try {
      final success = await _orderRepository.rejectOrder(
          isPurchaseOrder: isPurchaseOrder,
          orderId: id,
          reason: reason,
          description: description,);
      if (success) {
        await getPendingOrders();
        await getRejectedOrders();
      } else {
        throw Exception();
      }
    } catch (e) {
      e.log();
      AppRoutes.showErrorSnackbar(message: 'Failed to reject order');
    }
  }
}
