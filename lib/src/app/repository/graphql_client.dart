import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/utils/constants.dart';
import 'package:dealerapp/src/utils/extensions.dart';
import 'package:dealerapp/src/utils/log_colors.dart';
import 'package:dio/dio.dart';
import 'package:ferry/ferry.dart';
import 'package:ferry_hive_store/ferry_hive_store.dart';
import 'package:gql_dio_link/gql_dio_link.dart';
import 'package:gql_http_link/gql_http_link.dart';

///GraphQL Client
class GraphqlClient {
/*   final _logger = Logger(
    level: Level.info,
    printer: PrettyPrinter(
      errorMethodCount: 10,
      methodCount: 0,
      lineLength: 40,
    ),
  );
 */

  ///Prod URL
  static const String _prodUrl = 'https://bavelectric.com';

  ///Live URL
  static const String _devUrl = 'http://bavelectric.com:3000';

  ///Base URL
  static String get baseUrl => Constants.isDev ? _devUrl : _prodUrl;

  ///Dio Client
  ///
  ///It's a Dio Client Object which is late
  ///
  ///
  ///injected while initializing the [client] object
  late final Dio _dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
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
  late Client client;

  ///GraphQL Client for Multipart Requests
  late Client multipartClient;

  /// HTTP Ferry client for temporary fix for file upload
  late Client Function({required bool isMultipart, required String token})
      httpClient;

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
    'Dev Environment ${Constants.isDev}'.log();
    'Iniatiaing GraphQL Client'.log();
    'Live URL: $_devUrl'.log(color: LogColors.yellow, name: 'URL');
    'Base URL: $baseUrl'.log(color: LogColors.yellow, name: 'URL');
    'GraphQL Path: $_path'.log(color: LogColors.yellow, name: 'GraphQL Path');

    'Initiating Hive Store for Ferry'
        .log(color: LogColors.cyan, name: 'GraphQL Initialization');
    final hiveStore = HiveStore(cacheProvider.graphqlBox);
    'Initiating Cache for Ferry'
        .log(color: LogColors.cyan, name: 'GraphQL Initialization');
    final cache = Cache(store: hiveStore);
    'Initiating Dio Link for Ferry'.log(
      color: LogColors.cyan,
      name: 'Link Initialization',
    );
    final link = DioLink(
      _path,
      client: _dio,
    );
    HttpLink httpLink({required bool isMultipart, required String token}) =>
        HttpLink(
          baseUrl + _path,
          defaultHeaders: {
            'Authorization': 'Bearer ${token}',
            if (isMultipart)
              Headers.contentTypeHeader: Headers.multipartFormDataContentType,
          },
        );

    'Initiating Multipart Link for Ferry'.log(
      color: LogColors.cyan,
      name: 'Link Initialization',
    );
    final multiPartLink = DioLink(
      _path,
      client: _dio,
      defaultHeaders: {
        'Authorization': 'Bearer ${cacheProvider.getSessionToken()}',
        Headers.contentTypeHeader: Headers.multipartFormDataContentType,
      },
    );

    'Initiating Ferry Client'.log(
      color: LogColors.green,
      name: 'Client Initialization',
    );
    client = Client(
      link: link,
      cache: cache,
      defaultFetchPolicies: {
        OperationType.query: FetchPolicy.NoCache,
        OperationType.mutation: FetchPolicy.NoCache,
      },
    );

    'Initiating Multipart client for Ferry'.log(
      color: LogColors.green,
      name: 'Client Initialization',
    );
    multipartClient = Client(
      link: multiPartLink,
      cache: cache,
      defaultFetchPolicies: {
        OperationType.mutation: FetchPolicy.NoCache,
        OperationType.query: FetchPolicy.NoCache,
      },
    );

    'Initiating http ferry client for file upload'.log(
      color: LogColors.green,
      name: 'Client Initialization',
    );
    httpClient = ({bool isMultipart = false, String token = ''}) {
      return Client(
        link: httpLink(isMultipart: isMultipart, token: token),
        cache: cache,
      );
    };

    'GraphQL Client Initialized'.log(
      color: LogColors.green,
      name: 'Initialization Complete',
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
              if (cacheProvider.getSessionToken() != null &&
                  cacheProvider.getSessionToken()!.isNotEmpty) {
                options.headers['Authorization'] =
                    'Bearer ${cacheProvider.getSessionToken()}';
              }
              options.headers.toString().log(
                    name: 'Headers',
                    color: LogColors.cyan,
                  );
              final queryData = options.data as Map;
              (queryData['operationName'] as String)
                  .log(name: 'Operation Name', color: LogColors.cyan);
              (queryData['query'] as String).split('(').first.log(
                    name: 'Query',
                    color: LogColors.cyan,
                  );
              handler.next(options);
            },
            onResponse: (e, handler) {
              handler.next(e);
            },
            onError: (e, handler) {
              e.message.log(color: LogColors.red, name: 'Error');
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
