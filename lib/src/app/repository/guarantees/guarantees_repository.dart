import 'package:dealerapp/src/app/repository/graphql_client.dart';
import 'package:dealerapp/src/utils/get_it.dart';

import 'graphql/__generated__/guarantees.data.gql.dart';
import 'graphql/__generated__/guarantees.req.gql.dart';

class GuaranteeRepository {
  final _client = getIt<GraphqlClient>().client;

  Future<List<GGuaranteesData_guarantees>> getGuarantees() async {
    try {
      final result = await _client.request(GGuaranteesReq()).first;
      if (result.hasErrors) {
        throw result.linkException ??
            result.graphqlErrors?.firstOrNull ??
            Exception('Unknown error');
      }
      return result.data!.guarantees!.toList();
    } catch (e) {
      rethrow;
    }
  }
}
