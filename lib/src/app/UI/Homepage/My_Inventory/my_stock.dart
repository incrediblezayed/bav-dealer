import 'package:dealerapp/src/app/UI/Homepage/My_Inventory/widgets/my_stock_card.dart';
import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/utils/global_exports.dart';
import 'package:dealerapp/src/widgets/empty_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyStockPage extends ConsumerWidget {
  static const String routeName = "MyStockPage";
  const MyStockPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final inventoryPro = ref.watch(inventoryProvider);
    return inventoryPro.vehicleDealers.isEmpty
        ? EmptyWidgt(title: 'Uh oh! You have no orders.')
        : Container(
            padding: const EdgeInsets.all(6),
            color: AppTheme.textFieldFill,
            child: ListView(
              shrinkWrap: true,
              children: inventoryPro.vehicleDealers
                  .map((e) => MyStockCard(vehicleDealers: e))
                  .toList(),
            ),
          );
  }
}
