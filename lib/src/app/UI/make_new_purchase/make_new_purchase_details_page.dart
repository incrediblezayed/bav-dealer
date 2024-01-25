import 'package:dealerapp/src/app/UI/make_new_purchase/purchase_successful_page.dart';
import 'package:dealerapp/src/utils/global_exports.dart';
import 'package:dealerapp/src/widgets/k_button.dart';
import 'package:dealerapp/src/widgets/k_textfiled.dart';
import 'package:dealerapp/src/widgets/total_amount_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';

class MakeNewPurchaseDetailsPage extends ConsumerStatefulWidget {
  const MakeNewPurchaseDetailsPage({super.key});

  @override
  ConsumerState<MakeNewPurchaseDetailsPage> createState() =>
      _MakeNewPurchaseDetailsPageState();
}

class _MakeNewPurchaseDetailsPageState
    extends ConsumerState<MakeNewPurchaseDetailsPage> {
  DateTime? selectedDate;
  Future<void> _selectDate(BuildContext context) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null) {
      setState(() {
        selectedDate = picked;
        _dateController.text = DateFormat('yyyy-MM-dd').format(selectedDate!);
      });
    }
  }

  @override
  void dispose() {
    _dateController.dispose();
    super.dispose();
  }

  // Controller for the text field to set and retrieve text.
  TextEditingController nameController = TextEditingController();
  TextEditingController emailIdController = TextEditingController();
  TextEditingController contactNumberController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppTheme.scaffoldBgColor,
        leading: GestureDetector(
          onTap: () {
            AppRoutes.pop();
          },
          child: const Icon(
            Iconsax.arrow_left,
            color: AppTheme.textColor,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Make New Purchase',
              style: theme.headlineLarge,
            ),
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Add Buyer Information',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20.h),
              KTextField(
                controller: nameController,
                hintText: 'Name',
                label: 'Name',
                inputType: TextInputType.name,
              ),
              SizedBox(
                height: 16.h,
              ),
              KTextField(
                controller: emailIdController,
                hintText: 'Enter Your Email ID',
                label: 'Email ID',
                inputType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 14.h,
              ),
              KTextField(
                controller: contactNumberController,
                hintText: 'Contact Number',
                label: 'Contact Number',
                inputType: TextInputType.phone,
                maxLength: 10,
              ),
              SizedBox(
                height: 16.h,
              ),
              KTextField(
                controller: addressController,
                hintText: 'Address',
                label: 'UserAddress',
              ),
              SizedBox(
                height: 16.h,
              ),
              KTextField(
                label: 'Date Of Delivery',
                controller: _dateController,
                inputType: TextInputType.datetime,
                readOnly: true,
                suffixIcon: IconButton(
                  onPressed: () {
                    _selectDate(context);
                  },
                  icon: SvgPicture.asset(AppImages.calender),
                ),
              ),
              SizedBox(height: 20.h),
              Text('Billing Details', style: theme.headlineSmall),
              SizedBox(height: 20.h),
              const TotalAmountWidget(
                price: 2020200,
                shippingCharges: 500,
                serviceTax: 199,
              ),
              const Spacer(),
              KButton(
                onPressed: () {
                  if (nameController.text.isEmpty ||
                      emailIdController.text.isEmpty ||
                      contactNumberController.text.isEmpty ||
                      addressController.text.isEmpty ||
                      _dateController.text.isEmpty) {
                    AppRoutes.showErrorSnackbar(
                      message: 'Please fill the details',
                    );
                  } else {
                    AppRoutes.push(page: const PurchaseSuccessPage());
                  }
                },
                text: 'Place Order',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
