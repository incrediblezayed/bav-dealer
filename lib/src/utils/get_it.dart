import 'package:dealerapp/src/app/provider/cache_provider.dart';
import 'package:get_it/get_it.dart';

///GetIt instance
GetIt getIt = GetIt.instance;

///Setup the Dependency Injection
void setupLocator() {
  ///Register the Classes with GetIt
  getIt
      // ..registerLazySingleton(() => GraphqlClient())
      .registerLazySingleton(() => CacheProvider());
}
