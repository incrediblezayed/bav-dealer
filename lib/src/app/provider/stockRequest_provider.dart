import 'package:flutter/cupertino.dart';

class StockProvider extends ChangeNotifier {

  Future<void> init() async {
    await getProductStock();
    await getVehicleStock();

  }

  getProductStock() {

  }

  getVehicleStock() {}

}