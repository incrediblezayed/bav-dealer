import 'package:built_collection/built_collection.dart';
import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/app/repository/graphql/__generated__/schema.schema.gql.dart';
import 'package:dealerapp/src/app/repository/graphql_client.dart';
import 'package:dealerapp/src/app/repository/report/graphql/__generated__/report.data.gql.dart';
import 'package:dealerapp/src/app/repository/report/graphql/__generated__/report.req.gql.dart';
import 'package:dealerapp/src/utils/extensions.dart';
import 'package:dealerapp/src/utils/index.dart';
import 'package:ferry/ferry.dart';
import 'package:http/http.dart' as http;

class ReportRepository {
  final _client = getIt<GraphqlClient>();
  Future<bool> createFeedback(
      {required String title,
      required String description,
      required String categoryId,
      required List<String> attachments,}) async {
    try {
      final userId = cacheProvider.getUserId();

      final files = <http.MultipartFile>[];
      for (var i = 0; i < attachments.length; i++) {
        final file = await http.MultipartFile.fromPath(
          '',
          attachments[i],
        );
        files.add(file);
      }

      final response = await _client
          .httpClient(
              isMultipart: files.isNotEmpty,
              token: cacheProvider.getSessionToken()!,)
          .request(GCreateFeedbackReq(
            (b) => b
              ..vars.data.title = title
              ..vars.data.description = description
              ..vars.data.user.connect.id = userId
              ..vars.data.category.connect.id = categoryId
              ..vars.data.attachments.create =
                  ListBuilder<GFeedbackAttachmentCreateInput>(
                files.map<GFeedbackAttachmentCreateInput>(
                  (e) => GFeedbackAttachmentCreateInput(
                    (b) => b..image.upload = e,
                  ),
                ),
              )
              ..fetchPolicy = FetchPolicy.NoCache,
          ),)
          .first;
      return response.data?.createFeedback?.id != null;
    } catch (e) {
      e.log();
      return false;
    }
  }

  Future<bool> createReport(
      {required String title,
      required String description,
      required String categoryId,
      required List<String> attachments,}) async {
    try {
      final userId = cacheProvider.getUserId();

      final files = <http.MultipartFile>[];
      for (var i = 0; i < attachments.length; i++) {
        final file = await http.MultipartFile.fromPath('image', attachments[i],
            filename: attachments[i].split('/').last,);
        files.add(file);
      }

      final response = await _client
          .httpClient(
              isMultipart: files.isNotEmpty,
              token: cacheProvider.getSessionToken()!,)
          .request(GCreateReportReq(
            (b) => b
              ..vars.data.title = title
              ..vars.data.description = description
              ..vars.data.user.connect.id = userId
              ..vars.data.category.connect.id = categoryId
              ..vars.data.attachments.create =
                  ListBuilder<GReportAttachmentCreateInput>(
                files.map<GReportAttachmentCreateInput>(
                  (e) => GReportAttachmentCreateInput(
                    (b) => b..image.upload = e,
                  ),
                ),
              )
              ..fetchPolicy = FetchPolicy.NoCache,
          ),)
          .first;
      return response.data?.createReport?.id != null;
    } catch (e) {
      e.log();
      return false;
    }
  }

  Future<List<GCategoriesData_categories>> getCategories() async {
    try {
      final response = await _client.client.request(GCategoriesReq()).first;
      return response.data?.categories?.toList() ?? [];
    } catch (e) {
      e.log();
    }
    return [];
  }
}
