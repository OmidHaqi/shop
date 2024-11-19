import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shop/common/utils/prefs_operator.dart';

GetIt locator = GetIt.instance;

Future<void> initLocator() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  locator.registerSingleton(sharedPreferences);
  locator.registerSingleton<PrefsOperator>(PrefsOperator());
}