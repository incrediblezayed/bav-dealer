import 'package:collection/collection.dart';
import 'package:dealerapp/src/app/model/dealer_stock_model.dart';
import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/app/repository/guarantees/graphql/__generated__/guarantees.data.gql.dart';
import 'package:dealerapp/src/app/repository/inventory/inventory_repository.dart';
import 'package:dealerapp/src/utils/extensions.dart';
import 'package:dealerapp/src/utils/global_exports.dart';
import 'package:dealerapp/src/widgets/k_button.dart';
import 'package:dealerapp/src/widgets/k_textfiled.dart';
import 'package:dealerapp/src/widgets/loading_widget.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multi_dropdown/multi_dropdown.dart';

class QuantityScreen extends ConsumerStatefulWidget {
  const QuantityScreen({
    required this.variantId,
    required this.colorId,
    required this.prices,
    required this.guarantees,
    this.index,
    this.isUpdate = false,
    this.product = false,
    this.vehicleDealerId,
    super.key,
  }) : assert(
          isUpdate && index != null && vehicleDealerId != null || !isUpdate,
          'Index must be null if isUpdate is true',
        );
  final bool isUpdate;
  final String variantId;
  final String colorId;
  final List<Price> prices;
  final List<Guarantee> guarantees;
  final int? index;
  final String? vehicleDealerId;
  final bool product;

  @override
  ConsumerState<QuantityScreen> createState() => _QuantityScreenState();
}

class _QuantityScreenState extends ConsumerState<QuantityScreen> {
  List<PriceModel> prices = [];
  List<TextEditingController> controller = [];
  late List<String> selectedGuarantees = [];

  String get variantId => widget.variantId;

  String get colorId => widget.colorId;
  final List<GGuaranteesData_guarantees> _guaranteeDetails = [];
  List<DropdownItem<String>> guarantees = [];

  bool isLoading = true;

  void _showPopup(int index) {
    TextEditingController amountController =
        TextEditingController(text: prices[index].originalAmount.toString());
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Enter Original Amount'),
          content: TextField(
            controller: amountController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              hintText: 'Enter amount',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text(
                'Cancel',
                style: TextStyle(color: AppTheme.red),
              ),
            ),
            TextButton(
              onPressed: () {
                String originalAmount = amountController.text;
                if (originalAmount.isNotEmpty &&
                    int.tryParse(originalAmount) != null) {
                  prices[index].originalAmount = int.parse(originalAmount);

                  setState(() {});
                  Navigator.pop(context);
                }
              },
              child: const Text('OK',
                  style: TextStyle(color: AppTheme.primaryColor)),
            ),
          ],
        );
      },
    );
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      final guarantees = ref.read(guaranteesProvider).guarantees;
      if (guarantees.isEmpty) {
        await ref.read(guaranteesProvider.notifier).getGuarantees();
      }
      prices = List<PriceModel>.from(ref.read(inventoryProvider).prices).map(
        (e) {
          final priceId = widget.prices
                  .firstWhereOrNull(
                    (element) => element.category?.name == e.name,
                  )
                  ?.id ??
              '';
          priceId.log();
          return PriceModel(
            price: widget.prices
                    .firstWhereOrNull(
                      (element) => element.category?.name == e.name,
                    )
                    ?.amount ??
                0,
            originalAmount: widget.prices
                    .firstWhereOrNull(
                      (element) => element.category?.name == e.name,
                    )
                    ?.originalAmount ??
                -1,
            type: e.type,
            name: e.name,
            priceId: priceId,
          );
        },
      ).toList();
      controller = prices
          .map(
            (e) => TextEditingController(
              text: widget.prices
                      .firstWhereOrNull(
                        (element) => element.category?.name == e.name,
                      )
                      ?.amount
                      .toString() ??
                  '',
            ),
          )
          .toList();
      isLoading = false;
      setState(() {});
    });
    super.initState();
  }

  MultiSelectController<String> multiSelectController = MultiSelectController();

  String getLabel(String id) {
    final guarantee =
        _guaranteeDetails.firstWhereOrNull((element) => element.id == id);
    return guarantee?.name ?? '';
  }

  bool initial = true;

  @override
  Widget build(BuildContext context) {
    final inventoryPro = ref.watch(inventoryProvider);
    final guaranteesPro = ref.watch(guaranteesProvider);
    if (initial || guarantees.isEmpty) {
      guarantees = guaranteesPro.guarantees
          .map(
            (e) => DropdownItem(
              label: e.name!,
              value: e.id,
              selected: widget.guarantees.any((w) => w.id == e.id),
            ),
          )
          .toList();
      selectedGuarantees = guarantees
          .where(
            (element) => widget.guarantees.any((e) => e.id == element.value),
          )
          .map((e) => e.value)
          .toList();
      initial = false;
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vehicle Details'),
      ),
      body: isLoading
          ? const Center(
              child: LoadingWidget(),
            )
          : SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10.h,
                      ),
                      MultiDropdown<String>(
                        /*  onOptionRemoved: (index, option) {
                                          selectedGuarantees.remove(option);
                                          setState(() {});
                                        }, */
                        /* borderColor: ,
                                        borderRadius: 4,
                                        , */
                        controller: multiSelectController,
                        dropdownDecoration: const DropdownDecoration(),
                        fieldDecoration: FieldDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black.withOpacity(.3))),
                          borderRadius: 4,
                        ),
                        dropdownItemDecoration: const DropdownItemDecoration(
                          textColor: Colors.black,
                        ),
                        onSelectionChange: (selectedOptions) {
                          setState(() {
                            selectedGuarantees = selectedOptions;
                          });
                        },
                        items: guarantees,
                      ),
                      const SizedBox(
                          width: 8), // Spacing between dropdown and icon

                      SizedBox(
                        height: 10.h,
                      ),
                      ...prices.mapIndexed(
                        (i, e) => Column(
                          children: [
                            KTextField(
                              controller: controller[i],
                              label: e.name,
                              hintText: 'Enter ${e.name}',
                              onChanged: (value) {
                                final price = int.parse(value);
                                prices[i].price = price;
                              },
                              inputType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                              suffixIcon: prices[i].originalAmount == -1 ||
                                      prices[i].originalAmount == 0
                                  ? IconButton(
                                      icon: const Icon(Icons.add),
                                      onPressed: () {
                                        _showPopup(i);
                                      },
                                    )
                                  : IconButton(
                                      icon: const Icon(
                                        Icons.check,
                                        color: AppTheme.primaryColor,
                                      ),
                                      onPressed: () {
                                        _showPopup(i);
                                      },
                                    ),
                              // : Text(
                              //     prices[i].originalAmount.toPrice(),
                              //   ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            if (prices[i].originalAmount > 0)
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Original Amount: ${prices[i].originalAmount.toPrice()}',
                                  style: const TextStyle(
                                    color: AppTheme.textColor,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            SizedBox(
                              height: 20.h,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: 50,
                            width: MediaQuery.sizeOf(context).width * 0.4,
                            child: KButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              text: 'Cancel',
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: MediaQuery.sizeOf(context).width * 0.4,
                            child: KButton(
                              onPressed: () {
                                if (widget.isUpdate) {
                                  if (widget.product) {
                                    inventoryPro
                                        .updateProductDealer(
                                      index: widget.index!,
                                      id: widget.vehicleDealerId!,
                                      guarantees: selectedGuarantees.toList(),
                                      prices: prices,
                                    )
                                        .then((value) {
                                      for (var i = 0;
                                          i < controller.length;
                                          i++) {
                                        controller[i].clear();
                                      }
                                    });
                                  } else {
                                    inventoryPro
                                        .updateVehicleDealer(
                                      index: widget.index!,
                                      id: widget.vehicleDealerId!,
                                      guarantees: selectedGuarantees.toList(),
                                      prices: prices,
                                    )
                                        .then((value) {
                                      for (var i = 0;
                                          i < controller.length;
                                          i++) {
                                        controller[i].clear();
                                      }
                                    });
                                  }
                                } else {
                                  if (widget.product) {
                                    inventoryPro
                                        .createProductStockRequest(
                                      guarantees: selectedGuarantees.toList(),
                                      variantId: variantId,
                                      prices: prices,
                                    )
                                        .then((value) {
                                      for (var i = 0;
                                          i < controller.length;
                                          i++) {
                                        controller[i].clear();
                                      }
                                    });
                                  } else {
                                    inventoryPro
                                        .createStockRequest(
                                      guarantees: selectedGuarantees.toList(),
                                      variantId: variantId,
                                      colorId: colorId,
                                      prices: prices,
                                    )
                                        .then((value) {
                                      for (var i = 0;
                                          i < controller.length;
                                          i++) {
                                        controller[i].clear();
                                      }
                                    });
                                  }
                                }
                                Navigator.pop(context);
                              },
                              text: 'Submit',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}
