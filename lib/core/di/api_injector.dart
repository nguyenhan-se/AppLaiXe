part of 'init_di.dart';

Future<void> setupApiDependencies(GetIt getIt) async {
  getIt.registerSingleton<TodoApi>(TodoApi(getIt<Dio>()));
  getIt.registerSingleton<AuthApi>(AuthApi(getIt<Dio>()));
}
