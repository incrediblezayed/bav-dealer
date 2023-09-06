import 'package:dealerapp/src/app/repository/inventory/graphql/__generated__/inventory.data.gql.dart';
import 'package:dealerapp/src/app/repository/inventory/inventory_repository.dart';
import 'package:dealerapp/src/utils/app_routes.dart';
import 'package:dealerapp/src/utils/extensions.dart';
import 'package:flutter/material.dart';

class PurchaseOrderProvider extends ChangeNotifier {
  final InventoryRepository _inventoryRepository = InventoryRepository();

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
}
