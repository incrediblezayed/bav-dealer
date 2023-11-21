import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/app/repository/graphql_client.dart';
import 'package:dealerapp/src/dealer_app.dart';
import 'package:dealerapp/src/utils/constants.dart';
import 'package:dealerapp/src/utils/global_exports.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:stack_trace/stack_trace.dart' as stack_trace;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FlutterError.demangleStackTrace = (StackTrace stack) {
    if (stack is stack_trace.Trace) return stack.vmTrace;
    if (stack is stack_trace.Chain) return stack.toTrace().vmTrace;
    return stack;
  };

  await SentryFlutter.init(
    (options) => options
      ..dsn = Constants.glitchTipDSN
      ..tracesSampleRate = 1.0
      ..environment = Constants.environment
      ..anrEnabled = true
      ..enableAutoPerformanceTracing = true,
    appRunner: () async {
      /// Setup DI with GetIt
      setupLocator();

      /// Initialize the Cache Provider
      await cacheProvider.initHive();

      ///Initialize the GraphQL Client
      await getIt<GraphqlClient>().initGqlClient();

      /// Main Entry point of the Flutter App
      ///
      /// [ProviderScope] is the root of the Riverpod
      /// for initializing all the providers
      runApp(
        const ProviderScope(
          child: DealerApp(),
        ),
      );
    },
  );
}
