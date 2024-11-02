import 'dart:async';

import 'package:dealerapp/src/app/model/product_details_model.dart';
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

  ProductVariantModel? _selectedVehicle;

  ///
  ProductVariantModel? get selectedVehicle => _selectedVehicle;

  ///
  set selectedVehicle(ProductVariantModel? data) {
    _selectedVehicle = data;
    notifyListeners();
  }

  ProductVariantModel? _selectedVariants;

  ///
  ProductVariantModel? get selectedVariants => _selectedVariants;
  set selectedVariants(ProductVariantModel? data) {
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

  List<GProductOrdersData_productOrders>? _productpendingOrders;
  List<GProductOrdersData_productOrders>? get productpendingOrders =>
      _productpendingOrders;
  set productpendingOrders(List<GProductOrdersData_productOrders>? data) {
    _productpendingOrders = data;
    notifyListeners();
  }

  List<GVehicleOrdersData_vehicleOrders>? _pendingOrders;
  List<GVehicleOrdersData_vehicleOrders>? get pendingOrders => _pendingOrders;
  set pendingOrders(List<GVehicleOrdersData_vehicleOrders>? data) {
    _pendingOrders = data;
    notifyListeners();
  }

  List<GTestDriveOrdersData_testDriveOrders>? _testDrivePendingOrders;
  List<GTestDriveOrdersData_testDriveOrders>? get testDrivePendingOrders =>
      _testDrivePendingOrders;
  set testDrivePendingOrders(List<GTestDriveOrdersData_testDriveOrders>? data) {
    _testDrivePendingOrders = data;
    notifyListeners();
  }

  int testDriveOrderCount = 0;
  int orderCount = 0;
  int productOrderCount = 0;

  List<GProductOrdersData_productOrders>? _productacceptedOrders;
  List<GProductOrdersData_productOrders>? get productacceptedOrders =>
      _productacceptedOrders;
  set productacceptedOrders(List<GProductOrdersData_productOrders>? data) {
    _productacceptedOrders = data;
    notifyListeners();
  }

  List<GVehicleOrdersData_vehicleOrders>? _acceptedOrders;
  List<GVehicleOrdersData_vehicleOrders>? get acceptedOrders => _acceptedOrders;
  set acceptedOrders(List<GVehicleOrdersData_vehicleOrders>? data) {
    _acceptedOrders = data;
    notifyListeners();
  }

  List<GTestDriveOrdersData_testDriveOrders>? _testDriveAcceptedOrders;
  List<GTestDriveOrdersData_testDriveOrders>? get testDriveAcceptedOrders =>
      _testDriveAcceptedOrders;
  set testDriveAcceptedOrders(
      List<GTestDriveOrdersData_testDriveOrders>? data) {
    _testDriveAcceptedOrders = data;
    notifyListeners();
  }

  List<GProductOrdersData_productOrders>? _productrejectedOrders;
  List<GProductOrdersData_productOrders>? get productrejectedOrders =>
      _productrejectedOrders;
  set productrejectedOrders(List<GProductOrdersData_productOrders>? data) {
    _productrejectedOrders = data;
    notifyListeners();
  }

  List<GVehicleOrdersData_vehicleOrders>? _rejectedOrders;
  List<GVehicleOrdersData_vehicleOrders>? get rejectedOrders => _rejectedOrders;
  set rejectedOrders(List<GVehicleOrdersData_vehicleOrders>? data) {
    _rejectedOrders = data;
    notifyListeners();
  }

  List<GTestDriveOrdersData_testDriveOrders>? _testDriveRejectedOrders;
  List<GTestDriveOrdersData_testDriveOrders>? get testDriveRejectedOrders =>
      _testDriveRejectedOrders;
  set testDriveRejectedOrders(
      List<GTestDriveOrdersData_testDriveOrders>? data) {
    _testDriveRejectedOrders = data;
    notifyListeners();
  }

  List<GProductOrdersData_productOrders>? _productdeliveredOrders;
  List<GProductOrdersData_productOrders>? get productdeliveredOrders =>
      _productdeliveredOrders;
  set productdeliveredOrders(List<GProductOrdersData_productOrders>? data) {
    _productdeliveredOrders = data;
    notifyListeners();
  }

  List<GVehicleOrdersData_vehicleOrders>? _deliveredOrders;
  List<GVehicleOrdersData_vehicleOrders>? get deliveredOrders =>
      _deliveredOrders;
  set deliveredOrders(List<GVehicleOrdersData_vehicleOrders>? data) {
    _deliveredOrders = data;
    notifyListeners();
  }

  List<GTestDriveOrdersData_testDriveOrders>? _testDriveDeliveredOrders;
  List<GTestDriveOrdersData_testDriveOrders>? get testDriveDeliveredOrders =>
      _testDriveDeliveredOrders;
  set testDriveDeliveredOrders(
    List<GTestDriveOrdersData_testDriveOrders>? data,
  ) {
    _testDriveDeliveredOrders = data;
    notifyListeners();
  }

/*   Future<void> init(OrderFamily orderFamily) async {
    //await getVehicles();
    await Future.wait([
    if (orderFamily == OrderFamily.purchaseOrders) 
       getPendingOrders();
       getAcceptedOrders();
       getRejectedOrders();
       getDeliveredOrders();
     else if (orderFamily == OrderFamily.testDriveOrders) 
      getTestDrivePendingOrders();
      getTestDriveAcceptedOrders();
      getTestDriveRejectedOrders();
      getTestDriveDeliveredOrders();
     else if (orderFamily == OrderFamily.productOrders) 
       getProductPendingOrders();
       getProductAcceptedOrders();
       getProductRejectedOrders();
       getProductDeliveredOrders();
    ]);
  } */

  Future<List<GProductOrdersData_productOrders>>
      getProductPendingOrders() async {
    try {
      productOrderCount = 0;
      productpendingOrders = null;
      final getProductOrders = await _orderRepository.getProductOrders(
        orderStatus: 'created',
        skip: 0,
        take: 15,
      );

      if (getProductOrders.$2 != null) {
        productpendingOrders = getProductOrders.$2!;
        productOrderCount = getProductOrders.$1;
      } else {
        await AppRoutes.showErrorSnackbar(
          message: 'Error while fetching list of product orders',
        );
      }
    } catch (e) {
      e.log();
    } finally {
      loading = false;
    }
    return [];
  }

  Future<void> getPaginatedProductPendingOrders() async {
    try {
      final orders = await _orderRepository.getProductOrders(
        orderStatus: 'created',
        skip: productpendingOrders?.length ?? 0,
        take: 15,
      );

      if (orders.$2 != null) {
        productpendingOrders = [...?productpendingOrders, ...orders.$2!];
        productOrderCount = orders.$1;
        notifyListeners();
      } else {
        await AppRoutes.showErrorSnackbar(
          message: 'Error while fetching more pending product orders',
        );
      }
    } catch (e) {
      e.log();
    }
  }

  Future<List<GVehicleOrdersData_vehicleOrders>> getPendingOrders() async {
    try {
      orderCount = 0;
      pendingOrders = null;
      final getVehicleOrders = await _orderRepository.getVehicleOrders(
          orderStatus: 'created', skip: 0, take: 15);
      if (getVehicleOrders.$2 != null) {
        pendingOrders = getVehicleOrders.$2!;
        orderCount = getVehicleOrders.$1;
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

  Future<void> getPaginatedPendingOrders() async {
    try {
      final orders = await _orderRepository.getVehicleOrders(
        orderStatus: 'created',
        skip: pendingOrders?.length ?? 0,
        take: 15,
      );

      if (orders.$2 != null) {
        pendingOrders = [...?pendingOrders, ...orders.$2!];
        orderCount = orders.$1;
        notifyListeners();
      } else {
        await AppRoutes.showErrorSnackbar(
          message: 'Error while fetching more pending orders',
        );
      }
    } catch (e) {
      e.log();
    }
  }

  Future<int> getPendingOrdersCount() async {
    try {
      return await _orderRepository.getVehicleOrdersCount('created');
    } catch (e) {
      e.log();
      return 0;
    }
  }

  Future<int> getTestDrivePendingOrdersCount() async {
    try {
      return await _orderRepository.getTestDriveOrdersCount('created');
    } catch (e) {
      e.log();
      return 0;
    }
  }

  Future<List<GTestDriveOrdersData_testDriveOrders>>
      getTestDrivePendingOrders() async {
    try {
      testDriveOrderCount = 0;
      testDrivePendingOrders = null;
      final getTestDriveOrders = await _orderRepository.getTestDriveOrders(
        orderStatus: 'created',
        skip: 0,
        take: 15,
      );

      if (getTestDriveOrders.$2 != null) {
        testDrivePendingOrders = getTestDriveOrders.$2!;
        testDriveOrderCount = getTestDriveOrders.$1;

        return getTestDriveOrders.$2!;
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

  Future<void> getPaginatedTestDrivePendingOrders() async {
    try {
      final orders = await _orderRepository.getTestDriveOrders(
        orderStatus: 'created',
        skip: testDrivePendingOrders?.length ?? 0,
        take: 15,
      );
      if (testDrivePendingOrders == null) {
        testDrivePendingOrders = orders.$2!;
        testDriveOrderCount = orders.$1;
      } else {
        testDrivePendingOrders!.addAll(orders.$2!);
        testDriveOrderCount = orders.$1;
        notifyListeners();
      }
    } catch (e) {
      e.log();
    }
  }

  Future<List<GProductOrdersData_productOrders>>
      getProductAcceptedOrders() async {
    try {
      productOrderCount = 0;
      productacceptedOrders = null;
      final getProductOrders = await _orderRepository.getProductOrders(
        orderStatus: 'accepted',
        skip: 0,
        take: 15,
      );

      if (getProductOrders.$2 != null) {
        productacceptedOrders = getProductOrders.$2!;
        productOrderCount = getProductOrders.$1;
        return getProductOrders.$2!;
      } else {
        await AppRoutes.showErrorSnackbar(
          message: 'Error while fetching list of accepted product orders',
        );
      }
    } catch (e) {
      e.log();
    } finally {
      loading = false;
    }
    return [];
  }

  Future<void> getPaginatedProductAcceptedOrders() async {
    try {
      final orders = await _orderRepository.getProductOrders(
        orderStatus: 'accepted',
        skip: productacceptedOrders?.length ?? 0,
        take: 15,
      );
      if (productacceptedOrders == null) {
        productacceptedOrders = orders.$2!;
        productOrderCount = orders.$1;
      } else {
        productacceptedOrders!.addAll(orders.$2!);
        productOrderCount = orders.$1;
        notifyListeners();
      }
    } catch (e) {
      e.log();
    }
  }

  Future<void> getAcceptedOrders() async {
    try {
      orderCount = 0;
      acceptedOrders = null;
      final getVehicleOrders = await _orderRepository.getVehicleOrders(
        orderStatus: 'accepted',
        skip: 0,
        take: 15,
      );

      acceptedOrders = getVehicleOrders.$2!;
      orderCount = getVehicleOrders.$1;
    } catch (e) {
      e.log();
    } finally {
      loading = false;
    }
  }

  Future<void> getPaginatedAcceptedOrders() async {
    try {
      final orders = await _orderRepository.getVehicleOrders(
        orderStatus: 'accepted',
        skip: acceptedOrders?.length ?? 0,
        take: 15,
      );
      if (acceptedOrders == null) {
        acceptedOrders = orders.$2!;
        orderCount = orders.$1;
      } else {
        acceptedOrders!.addAll(orders.$2!);
        orderCount = orders.$1;
        notifyListeners();
      }
    } catch (e) {
      e.log();
    }
  }

  Future<void> getTestDriveAcceptedOrders() async {
    try {
      testDriveOrderCount = 0;
      testDriveAcceptedOrders = null;
      final getTestDriveOrders = await _orderRepository.getTestDriveOrders(
        orderStatus: 'accepted',
        skip: 0,
        take: 15,
      );

      testDriveAcceptedOrders = getTestDriveOrders.$2!;
      testDriveOrderCount = getTestDriveOrders.$1;
    } catch (e) {
      e.log();
    } finally {
      loading = false;
    }
  }

  Future<void> getPaginatedTestDriveAcceptedOrders() async {
    try {
      final orders = await _orderRepository.getTestDriveOrders(
        orderStatus: 'accepted',
        skip: testDriveAcceptedOrders?.length ?? 0,
        take: 15,
      );
      if (testDriveAcceptedOrders == null) {
        testDriveAcceptedOrders = orders.$2!;
        testDriveOrderCount = orders.$1;
      } else {
        testDriveAcceptedOrders!.addAll(orders.$2!);
        testDriveOrderCount = orders.$1;
        notifyListeners();
      }
    } catch (e) {
      e.log();
    }
  }

  Future<void> getProductRejectedOrders() async {
    try {
      productOrderCount = 0;
      productrejectedOrders = null;
      final getProductOrders = await _orderRepository.getProductOrders(
          orderStatus: 'rejected', skip: 0, take: 15);
      if (getProductOrders.$2 != null) {
        productrejectedOrders = getProductOrders.$2!;
        productOrderCount = getProductOrders.$1;
      } else {
        await AppRoutes.showErrorSnackbar(
          message: 'Error while fetching list of rejected product orders',
        );
      }
    } catch (e) {
      e.log();
    } finally {
      loading = false;
    }
  }

  Future<void> getPaginatedProductRejectedOrders() async {
    try {
      final orders = await _orderRepository.getProductOrders(
        orderStatus: 'rejected',
        skip: productrejectedOrders?.length ?? 0,
        take: 15,
      );
      if (productrejectedOrders == null) {
        productrejectedOrders = orders.$2!;
        productOrderCount = orders.$1;
      } else {
        productrejectedOrders!.addAll(orders.$2!);
        productOrderCount = orders.$1;
        notifyListeners();
      }
    } catch (e) {
      e.log();
    }
  }

  Future<void> getRejectedOrders() async {
    try {
      orderCount = 0;
      rejectedOrders = null;
      final getVehicleOrders = await _orderRepository.getVehicleOrders(
          orderStatus: 'rejected', skip: 0, take: 15);
      if (getVehicleOrders.$2 != null) {
        rejectedOrders = getVehicleOrders.$2!;
        orderCount = getVehicleOrders.$1;
      } else {
        await AppRoutes.showErrorSnackbar(
          message: 'Error while fetching list of rejected orders',
        );
      }
    } catch (e) {
      e.log();
    } finally {
      loading = false;
    }
  }

  Future<void> getPaginatedRejectedOrders() async {
    try {
      final orders = await _orderRepository.getVehicleOrders(
        orderStatus: 'rejected',
        skip: rejectedOrders?.length ?? 0,
        take: 15,
      );
      if (rejectedOrders == null) {
        rejectedOrders = orders.$2!;
        orderCount = orders.$1;
      } else {
        rejectedOrders!.addAll(orders.$2!);
        orderCount = orders.$1;
        notifyListeners();
      }
    } catch (e) {
      e.log();
    }
  }

  Future<void> getTestDriveRejectedOrders() async {
    try {
      testDriveOrderCount = 0;
      testDriveRejectedOrders = null;
      final getTestDriveOrders = await _orderRepository.getTestDriveOrders(
        orderStatus: 'rejected',
        skip: 0,
        take: 15,
      );
      if (getTestDriveOrders.$2 != null) {
        testDriveRejectedOrders = getTestDriveOrders.$2!;
        testDriveOrderCount = getTestDriveOrders.$1;
      } else {
        await AppRoutes.showErrorSnackbar(
          message: 'Error while fetching list of test order vehicles',
        );
      }
    } catch (e) {
      e.log();
    }
  }

  Future<void> getPaginatedTestDriveRejectedOrders() async {
    try {
      final orders = await _orderRepository.getTestDriveOrders(
        orderStatus: 'rejected',
        skip: testDriveRejectedOrders?.length ?? 0,
        take: 15,
      );
      if (testDriveRejectedOrders == null) {
        testDriveRejectedOrders = orders.$2!;
        testDriveOrderCount = orders.$1;
      } else {
        testDriveRejectedOrders!.addAll(orders.$2!);
        testDriveOrderCount = orders.$1;
        notifyListeners();
      }
    } catch (e) {
      e.log();
    }
  }

  Future<void> getProductDeliveredOrders() async {
    try {
      productOrderCount = 0;
      productdeliveredOrders = null;
      final getProductOrders = await _orderRepository.getProductOrders(
          orderStatus: 'delivered', skip: 0, take: 15);
      if (getProductOrders.$2 != null) {
        productdeliveredOrders = getProductOrders.$2!;
        productOrderCount = getProductOrders.$1;
      } else {
        await AppRoutes.showErrorSnackbar(
          message: 'Error while fetching list of delivered product orders',
        );
      }
    } catch (e) {
      e.log();
    } finally {
      loading = false;
    }
  }

  Future<void> getPaginatedProductDeliveredOrders() async {
    try {
      final orders = await _orderRepository.getProductOrders(
        orderStatus: 'delivered',
        skip: productdeliveredOrders?.length ?? 0,
        take: 15,
      );

      if (orders.$2 != null) {
        if (productdeliveredOrders == null) {
          productdeliveredOrders = orders.$2!;
        } else {
          productdeliveredOrders!.addAll(orders.$2!);
        }
        productOrderCount = orders.$1;
        notifyListeners();
      } else {
        await AppRoutes.showErrorSnackbar(
          message: 'Error while fetching more delivered product orders',
        );
      }
    } catch (e) {
      e.log();
    }
  }

  Future<void> getDeliveredOrders() async {
    try {
      orderCount = 0;
      deliveredOrders = null;
      final getVehicleOrders = await _orderRepository.getVehicleOrders(
        orderStatus: 'delivered',
        skip: 0,
        take: 15,
      );
      if (getVehicleOrders.$2 != null) {
        deliveredOrders = getVehicleOrders.$2!;
        orderCount = getVehicleOrders.$1;
      } else {
        await AppRoutes.showErrorSnackbar(
          message: 'Error while fetching list of delivered orders',
        );
      }
    } catch (e) {
      e.log();
    } finally {
      loading = false;
    }
  }

  Future<void> getPaginatedDeliveredOrders() async {
    try {
      final orders = await _orderRepository.getVehicleOrders(
        orderStatus: 'delivered',
        skip: deliveredOrders?.length ?? 0,
        take: 15,
      );

      if (orders.$2 != null) {
        if (deliveredOrders == null) {
          deliveredOrders = orders.$2!;
        } else {
          deliveredOrders!.addAll(orders.$2!);
        }
        orderCount = orders.$1;
        notifyListeners();
      } else {
        await AppRoutes.showErrorSnackbar(
          message: 'Error while fetching more delivered orders',
        );
      }
    } catch (e) {
      e.log();
    }
  }

  Future<void> getTestDriveDeliveredOrders() async {
    try {
      testDriveOrderCount = 0;
      testDriveRejectedOrders = null;
      final getTestDriveOrders = await _orderRepository.getTestDriveOrders(
        orderStatus: 'delivered',
        skip: 0,
        take: 15,
      );
      if (getTestDriveOrders.$2 != null) {
        testDriveDeliveredOrders = getTestDriveOrders.$2!;
        testDriveOrderCount = getTestDriveOrders.$1;
      } else {
        await AppRoutes.showErrorSnackbar(
          message: 'Error while fetching list of test order vehicles',
        );
      }
    } catch (e) {
      e.log();
    }
  }

  Future<void> getPaginatedTestDriveDeliveredOrders() async {
    try {
      final orders = await _orderRepository.getTestDriveOrders(
        orderStatus: 'delivered',
        skip: testDriveDeliveredOrders?.length ?? 0,
        take: 15,
      );
      if (testDriveDeliveredOrders == null) {
        testDriveDeliveredOrders = orders.$2!;
        testDriveOrderCount = orders.$1;
      } else {
        testDriveDeliveredOrders!.addAll(orders.$2!);
        testDriveOrderCount = orders.$1;
        notifyListeners();
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
  Future<void> acceptProductOrder(String id) async {
    try {
      unawaited(AppRoutes.showLoadingDialog());
      final success = await _orderRepository.updateProductOrderStatus(
          productOrderId: id, status: OrderStatus.accepted.name);
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
        testDrivePendingOrders?.removeWhere((order) {
          return order.id == id;
        });
        unawaited(AppRoutes.showSuccessSnackbar(message: 'Order accepted'));
        Future.delayed(const Duration(milliseconds: 200), () {
          getPendingOrders();
        });
        notifyListeners();
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
    required String orderType, // Change to String
    String? description,
  }) async {
    try {
      unawaited(AppRoutes.showLoadingDialog());
      final success = await _orderRepository.rejectOrder(
        orderId: id,
        reason: reason,
        orderType: orderType, // Pass the order type
        description: description,
      );
      AppRoutes.pop();
      if (success) {
        await getPendingOrders();
        await getRejectedOrders();
        await getProductPendingOrders();
        await getProductRejectedOrders();
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
