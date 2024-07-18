import 'package:auto_size_text/auto_size_text.dart';
import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/utils/app_texts.dart';
import 'package:dealerapp/src/utils/extensions.dart';
import 'package:dealerapp/src/utils/global_exports.dart';
import 'package:dealerapp/src/widgets/k_bottom_bar_button.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

///Filter page
class FilterPage extends ConsumerStatefulWidget {
  ///Constructor for filter page
  const FilterPage({
    super.key,
    required this.currentTab,
  });

  final int currentTab;

  @override
  ConsumerState<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends ConsumerState<FilterPage> {
  @override
  void initState() {
    final provider = ref.read(inventoryProvider);
    switch (widget.currentTab) {
      case 0:
      case 1:
      case 2:
        provider.getVehicleFilterData();
      case 3:
      case 4:
        provider.getProductFilterData();
    }
    super.initState();
  }

  int selectedFilterIndex = 0;

  bool get isProductTab => widget.currentTab == 3 || widget.currentTab == 4;

  Widget getFilterPage() {
    final provider = ref.watch(inventoryProvider);
    provider.selectedBrands.log();
    List<Widget> widgets = switch (selectedFilterIndex) {
      0 => (isProductTab ? provider.productBrands : provider.vehicleBrands)
          .map(
            (e) => CheckboxListTile(
              side: WidgetStateBorderSide.resolveWith(
                (states) => BorderSide(
                  color: provider.selectedBrands.contains(e)
                      ? AppTheme.primaryColor
                      : AppTheme.defaultCaptionColor,
                ),
              ),
              controlAffinity: ListTileControlAffinity.leading,
              title: AutoSizeText(e),
              value: provider.selectedBrands.contains(e),
              onChanged: (v) {
                provider.toggleBrand(e);
              },
            ),
          )
          .toList(),
      1 => (isProductTab ? provider.productTypes : provider.vehicleTypes)
          .map((e) => CheckboxListTile(
                side: WidgetStateBorderSide.resolveWith(
                  (states) => BorderSide(
                    color: provider.selectedTypes.contains(e)
                        ? AppTheme.primaryColor
                        : AppTheme.defaultCaptionColor,
                  ),
                ),
                controlAffinity: ListTileControlAffinity.leading,
                title: AutoSizeText(e),
                value: provider.selectedTypes.contains(e),
                onChanged: (v) {
                  provider.toggleType(e);
                },
              ))
          .toList(),
      int() => [],
    };

    return ListView(
      children: widgets,
    );
  }

  @override
  Widget build(BuildContext context) {
    final provider = ref.watch(inventoryProvider);
    return PopScope(
      onPopInvoked: (bool invoked) {
        if (invoked && !provider.isFilterApplied) {
          provider.clearFilters(widget.currentTab);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          leading: const CloseButton(),
          title: AutoSizeText(
            'Filter',
            style: AppTexts.textBlackT16W6,
          ),
        ),
        bottomNavigationBar: Container(
          height: kBottomNavigationBarHeight,
          margin: EdgeInsets.all(8.w),
          child: Row(
            children: [
              Expanded(
                child: KBottomBarButton(
                  color: Colors.white,
                  text: 'Clear',
                  onTap: () {
                    provider.clearFilters(widget.currentTab);
                  },
                ),
              ),
              SizedBox(
                width: 16.w,
              ),
              Expanded(
                child: KBottomBarButton(
                  text: 'Apply',
                  onTap: () {
                    provider.applyFilter(widget.currentTab);
                    AppRoutes.pop(true);
                  },
                ),
              ),
            ],
          ),
        ),
        body: provider.filterLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Row(
                children: [
                  Expanded(
                    child: ColoredBox(
                      color: AppTheme.primaryColor.withOpacity(0.08),
                      child: ListView(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(16.w),
                            child: AutoSizeText(
                              'Filter',
                              style: AppTexts.textBlackT16W6,
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          /* filterOptionTile(
                            title: 'Price Range',
                            index: 0,
                            vehiclePro: vehiclePro,
                          ), */
                          filterOptionTile(
                            title: 'Brand',
                            index: 0,
                          ),
                          /*     filterOptionTile(
                            title: 'Color',
                            index: 1,
                            vehiclePro: vehiclePro,
                          ), */

                          filterOptionTile(
                            title:
                                isProductTab ? 'Product Type' : 'Vehicle Type',
                            index: 1,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Theme(
                      data: ThemeData(
                        checkboxTheme: CheckboxThemeData(
                          fillColor:
                              WidgetStateProperty.all(Colors.transparent),
                          checkColor:
                              WidgetStateProperty.all(AppTheme.primaryColor),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                        unselectedWidgetColor: AppTheme.defaultCaptionColor,
                      ),
                      child: getFilterPage(),
                    ),
                  ),
                ],
              ),
      ),
    );
  }

  ListTile filterOptionTile({
    required int index,
    required String title,
  }) {
    return ListTile(
      title: AutoSizeText(title),
      onTap: () {
        setState(() {
          selectedFilterIndex = index;
        });
      },
      titleTextStyle: const TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 16,
      ),
      selectedColor: AppTheme.defaultTitleColor,
      textColor: AppTheme.defaultCaptionColor,
      selectedTileColor: AppTheme.primaryColor.withOpacity(0.2),
      selected: selectedFilterIndex == index,
    );
  }
}

///Always active border side
///
///for showing checkbox border always active
class AlwaysActiveBorderSide extends WidgetStateBorderSide {
  @override
  BorderSide? resolve(Set<WidgetState> states) =>
      const BorderSide(color: Colors.black54);
}
