import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shop/common/utils/prefs_operator.dart';
import 'package:shop/features/home/data/data_source/home_api_provider.dart';
import 'package:shop/features/home/repositories/home_repository.dart';

GetIt locator = GetIt.instance;

Future<void> initLocator() async {
  locator.registerSingleton<Dio>(Dio());

  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  locator.registerSingleton(sharedPreferences);

  locator.registerSingleton<PrefsOperator>(
    PrefsOperator(),
  );

  /// api provider
  locator.registerSingleton<HomeApiProvider>(
    HomeApiProvider(
      locator(),
    ),
  );

  /// repository
  locator.registerSingleton<HomeRepository>(
    HomeRepository(
      locator(),
    ),
  );
}
