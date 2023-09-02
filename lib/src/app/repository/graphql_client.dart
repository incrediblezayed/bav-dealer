import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/utils/extensions.dart';
import 'package:dio/dio.dart';
import 'package:ferry/ferry.dart';
import 'package:ferry_hive_store/ferry_hive_store.dart';
import 'package:gql_dio_link/gql_dio_link.dart';

///GraphQL Client
class GraphqlClient {
  final Map<String, String> _headers = {
    'Authorization': 'Bearer ${cacheProvider.getSessionToken()}',
  };

  ///Local URL
  final String _localUrl = 'http://localhost:3000';

  ///Live URL
  final String _liveUrl = 'http://bavelectric.com:3000';

  ///Base URL
  static String baseUrl = 'http://bavelectric.com:3000';

  final String _railwayUrl =
      'https://bav-backend-host-production.up.railway.app';

  // /Dio Client
  // /
  // /It's a Dio Client Object which is late
  // /r
  // /
  // /injected while initializing the [client] object
  late final Dio _dio = Dio(
    BaseOptions(
      baseUrl: _liveUrl,
      headers: _headers,
    ),
  );

  ///GraphQL Path
  final String _path = '/api/graphql';

  ///GraphQL Client
  ///This is the GraphQL Client Object
  ///
  ///which is used to make any GraphQL request
  ///
  ///and is initialized in the [initGqlClient] method
  ///
  late Client client;

  ///GraphQL Client for Multipart Requests
  late Client multipartClient;

  ///Initialize the GraphQL Client
  ///This method initializes the GraphQL Client
  ///and sets the [client] variable
  ///
  ///also, this initializes the hive and caching for the GraphQL
  ///
  ///This method must be called before using the [client] variable
  ///Mostly in the main() function
  ///and this should be called once [CacheProvider] is initialized
  Future<void> initGqlClient() async {
    await _setupInterceptor();
    final hiveStore = HiveStore(cacheProvider.graphqlBox);
    final cache = Cache(store: hiveStore);
    final link = DioLink(
      _path,
      client: _dio,
      defaultHeaders: _headers,
    );

    client = Client(
      link: link,
      cache: cache,
      defaultFetchPolicies: {
        OperationType.query: FetchPolicy.NetworkOnly,
        OperationType.mutation: FetchPolicy.NetworkOnly,
      },
    );
    final multiPartLink = DioLink(
      _path,
      client: _dio,
      defaultHeaders: {..._headers, 'Content-Type': 'multipart/form-data'},
    );
    multipartClient = Client(
      link: multiPartLink,
      cache: cache,
      defaultFetchPolicies: {
        OperationType.mutation: FetchPolicy.NetworkOnly,
      },
    );
  }

  ///Initialize Dio Interceptors
  ///
  ///This method initializes the Dio Interceptors
  ///
  ///and is called in the [initGqlClient] method
  ///
  ///This method is called only once
  ///
  ///And helps to track the request
  ///
  Future<void> _setupInterceptor() async {
    try {
      _dio.interceptors.addAll(
        [
          InterceptorsWrapper(
            onRequest: (options, handler) {
              options.headers['Authorization'] =
                  'Bearer ${cacheProvider.getSessionToken()}';
              options.headers['cookie'] =
                  'session=${cacheProvider.getSessionToken()}';

              final headers = StringBuffer();
              for (final element in options.headers.entries) {
                headers.write('${element.key}: ${element.value}\n');
              }

              handler.next(options);
            },
            onResponse: (e, handler) {
              final headers = StringBuffer();
              for (final element in e.headers.map.entries) {
                headers.write('${element.key}: ${element.value}\n');
              }

              handler.next(e);
            },
            onError: (e, handler) {
              e.log();

              handler.next(e);
            },
          ),
        ],
      );
    } catch (e) {
      e.log();
    }
  }
}
