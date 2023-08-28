import 'package:dealerapp/src/utils/global_exports.dart';
import 'package:dealerapp/src/widgets/k_button.dart';

class KInventoryBikeCard extends StatefulWidget {
  const KInventoryBikeCard({super.key});

  @override
  State<KInventoryBikeCard> createState() => _KInventoryBikeCardState();
}

class _KInventoryBikeCardState extends State<KInventoryBikeCard> {
  String selectedColor = 'Grey';
  String selectedQuantity = '1';

  void updateColor(String colorName) {
    setState(() {
      selectedColor = colorName;
    });
  }

  void updateQuantity(String? quantity) {
    setState(() {
      selectedQuantity = quantity ?? '1';
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: AppTheme.textFieldFill,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
        child: Container(
          height: MediaQuery.of(context).size.height / 1.6.h,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6.r),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'EV Model Blue Ninja',
                  style: theme.headlineLarge!
                      .copyWith(fontSize: 24.sp, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 10.h),
                Text(
                  'Electric Bike One a1 super ev rider',
                  style: theme.labelMedium!.copyWith(
                    color: Colors.black.withOpacity(.5),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 16.h),
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 125.h,
                          width: 135.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.r),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(6.r),
                            child: Image.asset(
                              AppImages.bike,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 20.w),
                        Expanded(
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Model',
                                    style: theme.labelMedium!.copyWith(
                                      color: Colors.black.withOpacity(.5),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 6.h),
                                  Text(
                                    'Color',
                                    style: theme.labelMedium!.copyWith(
                                      color: Colors.black.withOpacity(.5),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 6.h),
                                  Text(
                                    'Price',
                                    style: theme.labelMedium!.copyWith(
                                      color: Colors.black.withOpacity(.5),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 20.w),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'model',
                                    style: theme.labelMedium!.copyWith(
                                      color: Colors.black.withOpacity(.5),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 6.h),
                                  Text(
                                    selectedColor,
                                    style: theme.labelMedium!.copyWith(
                                      color: Colors.black.withOpacity(.5),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 6.h),
                                  Text(
                                    'price',
                                    style: theme.labelLarge!.copyWith(
                                      fontWeight: FontWeight.w600,
                                      color: AppTheme.primaryColor,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 60.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () => updateColor('Grey'),
                            child: Padding(
                              padding: EdgeInsets.only(left: 10.w),
                              child: Container(
                                height: 25.h,
                                width: 25.h,
                                decoration: BoxDecoration(
                                  color: const Color(0xffd9d9d9),
                                  borderRadius: BorderRadius.circular(50.r),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () => updateColor('Blue'),
                            child: Padding(
                              padding: EdgeInsets.only(left: 10.w),
                              child: Container(
                                height: 25.h,
                                width: 25.h,
                                decoration: BoxDecoration(
                                  color: const Color(0xff66aebd),
                                  borderRadius: BorderRadius.circular(50.r),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () => updateColor('Mint Green'),
                            child: Padding(
                              padding: EdgeInsets.only(left: 10.w),
                              child: Container(
                                height: 25.h,
                                width: 25.h,
                                decoration: BoxDecoration(
                                  color: const Color(0xff98c791),
                                  borderRadius: BorderRadius.circular(50.r),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24.h),
                DropdownButtonFormField<String>(
                  value: selectedQuantity,
                  onChanged: updateQuantity,
                  items: ['1', '2', '3', '4', '5']
                      .map(
                        (quantity) => DropdownMenuItem<String>(
                          value: quantity,
                          child: Text(quantity),
                        ),
                      )
                      .toList(),
                  decoration: InputDecoration(
                    labelText: 'Quantity',
                    counterText: '',
                    fillColor: AppTheme.white,
                    suffixIconColor: Colors.black.withOpacity(.2),
                    labelStyle: theme.headlineMedium,
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
                  ),
                ),
                SizedBox(height: 10.h),
                KButton(
                  onPressed: () {},
                  text: 'Add',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
