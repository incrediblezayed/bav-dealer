import 'package:dealerapp/src/app/repository/graphql_client.dart';
import 'package:dealerapp/src/app/repository/notifications/graphql/__generated__/notifications.data.gql.dart';
import 'package:dealerapp/src/app/repository/notifications/graphql/__generated__/notifications.req.gql.dart';
import 'package:dealerapp/src/utils/get_it.dart';

class NotificationRepository {
  final _client = getIt<GraphqlClient>().client;

  Future<List<GAppNotificationsData_appNotifications>>
      getNotifications() async {
    try {
      final result = await _client.request(GAppNotificationsReq()).first;
      if (result.hasErrors) {
        throw result.linkException ??
            result.graphqlErrors?.firstOrNull ??
            Exception('Unknown error');
      }
      return result.data!.appNotifications!.toList();
    } catch (e) {
      rethrow;
    }
  }
}
