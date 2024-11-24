import 'package:dealerapp/src/app/provider/auth_provider.dart';
import 'package:dealerapp/src/app/provider/cache_provider.dart';
import 'package:dealerapp/src/app/provider/dashboard_provider.dart';
import 'package:dealerapp/src/app/provider/guarantees_provider.dart';
import 'package:dealerapp/src/app/provider/inventory_provider.dart';
import 'package:dealerapp/src/app/provider/notification_provider.dart';
import 'package:dealerapp/src/app/provider/order_provider.dart';
import 'package:dealerapp/src/app/provider/report_provider.dart';
import 'package:dealerapp/src/app/provider/stock_request_provider.dart';
import 'package:dealerapp/src/utils/get_it.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final cacheProvider = getIt<CacheProvider>();
final authProvider = ChangeNotifierProvider((ref) => AuthProvider());
final inventoryProvider = ChangeNotifierProvider((ref) => InventoryProvider());
final stockProvider = ChangeNotifierProvider((ref) => StockProvider());
final orderProvider =
    ChangeNotifierProvider.family<OrdersProvider, OrderFamily>(
  (ref, orderFamily) => OrdersProvider(orderFamily: orderFamily),
);
final homePageProvider = ChangeNotifierProvider(HomePageProvider.new);
// final pushNotificationServiceProvider =
//     Provider((ref) => PushNotificationService());

final notificationsProvider =
    ChangeNotifierProvider((ref) => NotificationsProvider()..init());

final guaranteesProvider =
    ChangeNotifierProvider((ref) => GuaranteesProvider()..init());

final reportProvider =
    ChangeNotifierProvider((ref) => ReportProvider()..getCategories());
