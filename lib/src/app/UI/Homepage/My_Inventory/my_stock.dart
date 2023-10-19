import 'package:dealerapp/src/app/UI/Homepage/My_Inventory/widgets/my_stock_card.dart';
import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/utils/global_exports.dart';
import 'package:dealerapp/src/widgets/empty_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyStockPage extends ConsumerWidget {
  const MyStockPage({super.key});
  static const String routeName = 'MyStockPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final inventoryPro = ref.watch(inventoryProvider);
    return inventoryPro.vehicleDealers.isEmpty
        ? const EmptyWidget(title: 'Uh oh! You have no orders.')
        : Container(
            padding: const EdgeInsets.all(6),
            color: AppTheme.textFieldFill,
            child: RefreshIndicator(
              onRefresh: () async {
                await inventoryPro.getStocks();
              },
              child: ListView(
                shrinkWrap: true,
                children: inventoryPro.vehicleDealers
                    .map((e) => MyStockCard(vehicleDealers: e))
                    .toList(),
              ),
            ),
          );
  }
}
