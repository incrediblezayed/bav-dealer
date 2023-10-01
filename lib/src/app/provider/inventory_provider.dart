import 'package:dealerapp/src/app/repository/inventory/graphql/__generated__/inventory.data.gql.dart';
import 'package:dealerapp/src/app/repository/inventory/inventory_repository.dart';
import 'package:dealerapp/src/utils/extensions.dart';
import 'package:dealerapp/src/utils/global_exports.dart';

class InventoryProvider extends ChangeNotifier {
  List<GVehiclesData_vehicles_variants> _vehicles = [];
  List<GVehiclesData_vehicles_variants> get vehicles => _vehicles;
  set vehicles(List<GVehiclesData_vehicles_variants> data) {
    _vehicles = data;
    notifyListeners();
  }

  final InventoryRepository _inventoryRepository = InventoryRepository();

  List<GVehicleDealersData_vehicleDealers> _vehicleDealers = [];
  List<GVehicleDealersData_vehicleDealers> get vehicleDealers =>
      _vehicleDealers;
  set vehicleDealers(List<GVehicleDealersData_vehicleDealers> data) {
    _vehicleDealers = data;
    notifyListeners();
  }

  void init() async {
    await getVehicles();
    await getStocks();
  }

  Future<void> getVehicles() async {
    try {
      final getVehicles = await _inventoryRepository.getVehicles();

      if (getVehicles != null) {
        final check = getVehicles
            .map((e) => e.variants?.toList())
            .toList()
            .reduce((value, element) => value?..addAll(element!));

        vehicles = check!;

        for (final element in check) {
          print(element);
        }
      } else {
        AppRoutes.showErrorSnackbar(
          message: 'Errow while fetching list of vehicles',
        );
      }
    } catch (e) {
      e.log();
    }
  }

  Future<void> createStockRequest(
    String colorId,
    String variantId,
    int stock,
    int price,
    String type,
  ) async {
    try {
      final result = await _inventoryRepository.createStockRequest(
        colorId,
        variantId,
        stock,
        price,
        type
      );

      if (result) {
        await _inventoryRepository.getVehicles();
        AppRoutes.showSuccessSnackbar(message: 'Request Created Successfully');
      } else {
        AppRoutes.showErrorSnackbar(
          message: 'Errow while Adding Item to Stock',
        );
      }
    } catch (e) {
      e.log();
    }
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
      final result = await _inventoryRepository.currentStock();

      vehicleDealers = result;
    } catch (e) {
      e.log();
      AppRoutes.showErrorSnackbar(
        message: 'Errow while fetching list of vehicles',
      );
    }
  }
}
