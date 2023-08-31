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
  ) async {
    try {
      final result = await _inventoryRepository.createStockRequest(
        colorId,
        variantId,
        stock,
        price,
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
}
