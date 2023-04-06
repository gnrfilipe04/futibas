import 'package:futibas/screens/auth/auth_view_model.dart';
import 'package:get_it/get_it.dart';

GetIt provider = GetIt.instance;

void setupProvider() {
  provider.registerLazySingleton(() => AuthViewModel());
}