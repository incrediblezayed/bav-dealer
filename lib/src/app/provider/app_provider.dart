import 'package:dealerapp/src/app/provider/auth_provider.dart';
import 'package:dealerapp/src/app/provider/cache_provider.dart';
import 'package:dealerapp/src/app/provider/dashboard_provider.dart';
import 'package:dealerapp/src/app/provider/inventory_provider.dart';
import 'package:dealerapp/src/app/provider/purchase_order_provider.dart';
import 'package:dealerapp/src/utils/get_it.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final cacheProvider = getIt<CacheProvider>();
final authProvider = ChangeNotifierProvider((ref) => AuthProvider());
final inventoryProvider =
    ChangeNotifierProvider((ref) => InventoryProvider()..init());

final purchaseOrderProvider =
    ChangeNotifierProvider((ref) => OrdersProvider()..init());
final homePageProvider = ChangeNotifierProvider((ref) => HomePageProvider(ref));
