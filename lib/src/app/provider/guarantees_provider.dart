import 'package:dealerapp/src/utils/app_routes.dart';
import 'package:flutter/material.dart';

import '../repository/guarantees/graphql/__generated__/guarantees.data.gql.dart';
import '../repository/guarantees/guarantees_repository.dart';

class GuaranteesProvider extends ChangeNotifier {
  final _guaranteeRepository = GuaranteeRepository();

  List<GGuaranteesData_guarantees> _guarantees = [];

  List<GGuaranteesData_guarantees> get guarantees =>
      _guarantees;

  set guarantees(List<GGuaranteesData_guarantees> value) {
    _guarantees = value;
    notifyListeners();
  }

  void init() {
    getGuarantees();
  }

  Future<void> getGuarantees() async {
    try {
      final guarantees = await _guaranteeRepository.getGuarantees();
      this.guarantees = guarantees;
    } catch (e) {
      await AppRoutes.showErrorSnackbar(message: e.toString());
    }
  }
}
