import 'package:dealerapp/src/utils/global_exports.dart';

class TotalAmountWidget extends StatelessWidget {
  const TotalAmountWidget({
    required this.price,
    required this.shippingCharges,
    required this.serviceTax,
    super.key,
  });
  final double price; // Base amount
  final double shippingCharges;
  final double serviceTax;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    final totalAmount = price + shippingCharges + serviceTax;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Price',
              style: theme.labelMedium,
            ),
            Text(
              price.toStringAsFixed(2),
              style: theme.headlineSmall,
            ),
          ],
        ),
        SizedBox(height: 20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Shipping Charges',
              style: theme.labelMedium,
            ),
            Text(
              shippingCharges.toStringAsFixed(2),
              style: theme.headlineSmall,
            ),
          ],
        ),
        SizedBox(height: 20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Service Tax',
              style: theme.labelMedium,
            ),
            Text(
              serviceTax.toStringAsFixed(2),
              style: theme.headlineSmall,
            ),
          ],
        ),
        SizedBox(height: 20.h),
        const Divider(
          thickness: 2,
          height: 2,
          color: AppTheme.textFieldFill,
        ),
        SizedBox(height: 20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Total Amount',
              style: theme.labelLarge,
            ),
            Text(
              totalAmount.toStringAsFixed(2),
              style: theme.headlineMedium,
            ),
          ],
        ),
      ],
    );
  }
}
