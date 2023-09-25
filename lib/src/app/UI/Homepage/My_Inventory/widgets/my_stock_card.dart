import 'package:dealerapp/src/app/repository/inventory/graphql/__generated__/inventory.data.gql.dart';
import 'package:dealerapp/src/utils/extensions.dart';
import 'package:dealerapp/src/utils/global_exports.dart';
import 'package:dealerapp/src/widgets/k_bottom_bar_button.dart';
import 'package:dealerapp/src/widgets/k_cached_network_image.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyStockCard extends ConsumerWidget {
  final GVehicleDealersData_vehicleDealers vehicleDealers;

  const MyStockCard({Key? key, required this.vehicleDealers}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppTheme.white,
        borderRadius: BorderRadius.circular(9),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(vehicleDealers.vehicleVariant!.vehicle!.name!),
          Text(vehicleDealers.vehicleVariant!.vehicle!.description!),
          Row(
            children: [
              KCachedNWImage(
                  vehicleDealers.vehicleColor!.images!.first.image!.url),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Model'),
                      SizedBox(height: 4),
                      Text('Color'),
                      SizedBox(
                        height: 4,
                      ),
                      Text('Price')
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(vehicleDealers.vehicleVariant!.name!),
                      SizedBox(height: 4),
                      Text(vehicleDealers.vehicleColor!.name!),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        vehicleDealers.dealer_prices!.toPrice(),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Expanded(child: KBottomBarButton(text: 'Remove', onTap: () {})),
              SizedBox(
                width: 20,
              ),
              Expanded(
                  child: KBottomBarButton(
                      text: 'Quantity: ${vehicleDealers.stock}', onTap: () {})),
            ],
          )
        ],
      ),
    );
  }
}
