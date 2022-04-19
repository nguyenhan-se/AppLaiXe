part of 'init_di.dart';

Future<void> setupRepositoryDependencies(GetIt getIt) async {
  getIt.registerSingleton<ITodoRepository>(
    TodoRepositoryImpl(getIt<TodoApi>()),
  );
  getIt.registerSingleton<IAuthRepository>(AuthRepositoryImpl());
}
