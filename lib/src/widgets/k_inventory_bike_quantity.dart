import 'package:dealerapp/src/utils/global_exports.dart';
import 'package:dealerapp/src/widgets/k_drop_down_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:collection/src/list_extensions.dart';
import 'package:dealerapp/src/utils/extensions.dart';
import '../app/model/guarantees_model.dart';
import '../app/model/variant_details.model.dart';
import '../app/provider/app_provider.dart';
import '../app/provider/guarantees_provider.dart';
import '../app/provider/inventory_provider.dart';
import '../app/repository/guarantees/graphql/__generated__/guarantees.data.gql.dart';
import '../app/repository/inventory/inventory_repository.dart';
import 'k_button.dart';
import 'k_textfiled.dart';

class QuantityScreen extends ConsumerStatefulWidget {
  const QuantityScreen({required this.variant, super.key});

  final VariantDetailsModel variant;

  @override
  ConsumerState<QuantityScreen> createState() => _QuantityScreenState();
}

class _QuantityScreenState extends ConsumerState<QuantityScreen> {
  List<PriceModel> prices = [];
  List<TextEditingController> controller = [];
  List<GGuaranteesData_guarantees> guarantees = [];
  String? vehicleGuarantee;
  VariantDetailsModel get variants => widget.variant;
  late VehicleColor? selectedColor = variants.colors
      .where(
        (p0) => !ref
            .read(inventoryProvider)
            .vehicleDealers
            .map((e) => e.vehicleColor!.id)
            .contains(p0.id),
      )
      .firstOrNull;
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
        title: Text('Vehicle Details'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  fillColor: AppTheme.white,
                  suffixIconColor: Colors.black.withOpacity(.2),
                  labelStyle: const TextStyle(
                    color: AppTheme.textColor,
                    fontWeight: FontWeight.w500,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black.withOpacity(.2)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black.withOpacity(.2)),
                  ),
                  hintStyle: TextStyle(color: Colors.black.withOpacity(.2)),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black.withOpacity(.2)),
                  ),
                ),
                isExpanded: true,
                value: vehicleGuarantee ?? guaranteePro.guarantees.firstOrNull?.name,
                onChanged: (newValue) {
                  setState(() {
                    vehicleGuarantee = newValue;
                  });
                },
                items:  guaranteePro.guarantees.map((item) {
                  return DropdownMenuItem<String>(
                    value: item.name,
                    child: Text(item.name ?? "Guarantee"),
                  );
                }).toList(),
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
                    height: 50.0,
                    width: MediaQuery.sizeOf(context).width * 0.4,
                    child: KButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      text: 'Cancel',
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                    width: MediaQuery.sizeOf(context).width * 0.4,
                    child: KButton(
                      onPressed: () {
                        inventoryPro
                            .createStockRequest(
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
    );
  }
}
