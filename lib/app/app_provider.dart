import 'package:futibas/screens/auth/auth_view_model.dart';
import 'package:futibas/services/NavigationService.dart';
import 'package:get_it/get_it.dart';

GetIt provider = GetIt.instance;

void setupProvider() {
  provider.registerLazySingleton(() => NavigationService());
  provider.registerLazySingleton(() => AuthViewModel());
}