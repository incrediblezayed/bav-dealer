import 'package:collection/collection.dart';
import 'package:dealerapp/src/app/model/dealer_stock_model.dart';
import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/app/repository/guarantees/graphql/__generated__/guarantees.data.gql.dart';
import 'package:dealerapp/src/app/repository/inventory/graphql/__generated__/inventory.data.gql.dart';
import 'package:dealerapp/src/app/repository/inventory/inventory_repository.dart';
import 'package:dealerapp/src/utils/global_exports.dart';
import 'package:dealerapp/src/widgets/k_button.dart';
import 'package:dealerapp/src/widgets/k_textfiled.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';

class QuantityScreen extends ConsumerStatefulWidget {
  const QuantityScreen({
    required this.variantId,
    required this.colorId,
    required this.prices,
    required this.guarantees,
    this.index,
    this.isUpdate = false,
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

  @override
  ConsumerState<QuantityScreen> createState() => _QuantityScreenState();
}

class _QuantityScreenState extends ConsumerState<QuantityScreen> {
  List<PriceModel> prices = [];
  List<TextEditingController> controller = [];
  late List<ValueItem<String>> selectedGuarantees = [];
  String get variantId => widget.variantId;
  String get colorId => widget.colorId;
  final List<GGuaranteesData_guarantees> _guaranteeDetails = [];
  List<ValueItem<String>> guarantees = [];

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      prices = List<PriceModel>.from(ref.read(inventoryProvider).prices)
          .map(
            (e) => PriceModel(
              price: widget.prices
                      .firstWhereOrNull(
                        (element) => element.category?.name == e.name,
                      )
                      ?.amount ??
                  0,
              type: e.type,
              name: e.name,
              priceId: widget.prices
                      .firstWhereOrNull(
                        (element) => element.category?.name == e.name,
                      )
                      ?.id ??
                  '',
            ),
          )
          .toList();
      controller = prices
          .map(
            (e) => TextEditingController(
              text: widget.prices
                      .firstWhereOrNull(
                        (element) => element.category?.name == e.name,
                      )
                      ?.amount
                      ?.toString() ??
                  '',
            ),
          )
          .toList();
      setState(() {});
    });
    super.initState();
  }

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
            (e) => ValueItem(label: e.name!, value: e.id),
          )
          .toList();
      selectedGuarantees = guarantees
          .where(
            (element) => widget.guarantees.any((e) => e.id == element.value),
          )
          .toList();
      initial = false;
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vehicle Details'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 10.h,
                ),
                MultiSelectDropDown<String>(
                  onOptionRemoved: (index, option) {
                    selectedGuarantees.remove(option);
                    setState(() {});
                  },
                  borderColor: Colors.black.withOpacity(.6),
                  borderRadius: 4,
                  selectedOptions: selectedGuarantees,
                  optionTextStyle: const TextStyle(color: Colors.black),
                  onOptionSelected: (selectedOptions) {
                    selectedGuarantees = selectedOptions;
                  },
                  options: guarantees,
                ),
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
                      ),
                      SizedBox(
                        height: 10.h,
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
                            inventoryPro
                                .updateVehicleDealer(
                              index: widget.index!,
                              id: widget.vehicleDealerId!,
                              guarantees: selectedGuarantees
                                  .map((e) => e.value!)
                                  .toList(),
                              prices: prices,
                            )
                                .then((value) {
                              for (var i = 0; i < controller.length; i++) {
                                controller[i].clear();
                              }
                            });
                          } else {
                            inventoryPro
                                .createStockRequest(
                              guarantees: selectedGuarantees
                                  .map((e) => e.value!)
                                  .toList(),
                              variantId: variantId,
                              colorId: colorId,
                              prices: prices,
                            )
                                .then((value) {
                              for (var i = 0; i < controller.length; i++) {
                                controller[i].clear();
                              }
                            });
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
