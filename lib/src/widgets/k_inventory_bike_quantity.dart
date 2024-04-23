import 'package:collection/src/list_extensions.dart';
import 'package:dealerapp/src/app/model/variant_details.model.dart';
import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/app/repository/guarantees/graphql/__generated__/guarantees.data.gql.dart';
import 'package:dealerapp/src/app/repository/inventory/inventory_repository.dart';
import 'package:dealerapp/src/utils/global_exports.dart';
import 'package:dealerapp/src/widgets/k_button.dart';
import 'package:dealerapp/src/widgets/k_textfiled.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';

class QuantityScreen extends ConsumerStatefulWidget {
  const QuantityScreen({
    required this.variant,
    required this.vehicleColor,
    super.key,
  });

  final VariantDetailsModel variant;
  final VehicleColor? vehicleColor;

  @override
  ConsumerState<QuantityScreen> createState() => _QuantityScreenState();
}

class _QuantityScreenState extends ConsumerState<QuantityScreen> {
  List<PriceModel> prices = [];
  List<TextEditingController> controller = [];
  List<GGuaranteesData_guarantees> guarantees = [];
  List<GGuaranteesData_guarantees> selectedGuarantees = [];
  VariantDetailsModel get variants => widget.variant;
  late VehicleColor? selectedColor = widget.vehicleColor;
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      prices = ref.read(inventoryProvider).prices;
      guarantees = ref.read(guaranteesProvider).guarantees;
      controller = prices.map((e) => TextEditingController()).toList();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final inventoryPro = ref.watch(inventoryProvider);
    final guaranteePro = ref.watch(guaranteesProvider);
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
                MultiSelectDropDown(
                  onOptionRemoved: (index, option) {
                    selectedGuarantees.remove(option.value);
                    setState(() {});
                  },
                  borderColor: Colors.black.withOpacity(.6),
                  borderRadius: 4,
                  selectedOptions: selectedGuarantees
                      .map((e) => ValueItem(label: e.id, value: e))
                      .toList(),
                  optionTextStyle: const TextStyle(color: Colors.black),
                  /* decoration: InputDecoration(
                    fillColor: AppTheme.white,
                    suffixIconColor: Colors.black.withOpacity(.2),
                    labelStyle: const TextStyle(
                      color: AppTheme.textColor,
                      fontWeight: FontWeight.w500,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.black.withOpacity(.2)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.black.withOpacity(.2)),
                    ),
                    hintStyle: TextStyle(color: Colors.black.withOpacity(.2)),
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.black.withOpacity(.2)),
                    ),
                  ), */
                  onOptionSelected: (selectedOptions) {
                    selectedGuarantees =
                        selectedOptions.map((e) => e.value!).toList();
                  },
                  options: guaranteePro.guarantees
                      .map((e) => ValueItem(label: e.name!, value: e))
                      .toList(),
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
                          inventoryPro
                              .createStockRequest(
                            guarantees: selectedGuarantees,
                            variantId: variants.id,
                            colorId: selectedColor!.id,
                            prices: prices,
                          )
                              .then((value) {
                            for (var i = 0; i < controller.length; i++) {
                              controller[i].clear();
                            }
                            setState(() {
                              selectedColor = variants.colors
                                  .where(
                                    (p0) => !ref
                                        .read(inventoryProvider)
                                        .vehicleDealers
                                        .map((e) => e.vehicleColor!.id)
                                        .contains(p0.id),
                                  )
                                  .firstOrNull;
                            });
                          });
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
