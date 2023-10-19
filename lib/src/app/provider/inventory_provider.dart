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

  Future<void> init() async {
    await getStocks();
    await getPriceCategories();
    await getVehicles();
  }

  Future<void> getVehicles() async {
    try {
      final getVehicles = await _inventoryRepository.getVehicles(
        vehicleDealers.map((e) => e.vehicleVariant!.id).toList(),
      );

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

  Future<void> getPriceCategories() async {
    try {
      final result = await _inventoryRepository.getPriceCategories();
      prices = result
          .map((e) => PriceModel(price: 0, type: e.id, name: e.name!))
          .toList();
      priceCategories = result;
    } catch (e) {
      e.log();
    }
  }

  Future<void> createStockRequest({
    required String colorId,
    required String variantId,
    required int quantity,
    required List<PriceModel> prices,
  }) async {
    try {
      final result = await _inventoryRepository.createStockRequest(
        quantity: quantity,
        variantId: variantId,
        colorId: colorId,
        prices: prices,
      );
      if (result) {
        AppRoutes.showSuccessSnackbar(message: 'Request added successfully');
      } else {
        AppRoutes.showErrorSnackbar(message: 'Failed to add vehicle request');
      }
    } catch (e) {
      e.log();
      AppRoutes.showErrorSnackbar(message: 'Failed to add vehicle');
    }
  }

  Future<void> updateStockRequest({
    required String colorId,
    required String variantId,
    required int quantity,
    required String type,
  }) async {
    try {
      final result = await _inventoryRepository.updateStockRequest(
        colorId: colorId,
        variantId: variantId,
        stock: quantity,
        type: type,
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
