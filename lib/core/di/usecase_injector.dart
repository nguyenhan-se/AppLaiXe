part of 'init_di.dart';

Future<void> setupUseCaseDependencies(GetIt getIt) async {
  // UseCases - Todo
  getIt.registerSingleton<GetTodosUseCase>(
      GetTodosUseCase(getIt<ITodoRepository>()));

  // UseCases - Auth
  getIt.registerSingleton<SignInUseCase>(
      SignInUseCase(getIt<IAuthRepository>()));
  getIt.registerSingleton<SignOutUseCase>(
      SignOutUseCase(getIt<IAuthRepository>()));
  getIt.registerSingleton<AuthChangeUseCase>(
      AuthChangeUseCase(getIt<IAuthRepository>()));
  getIt.registerSingleton<GetUserUseCase>(
      GetUserUseCase(getIt<IAuthRepository>()));

  getIt.registerSingleton<GetDestinationsByCodeUseCase>(
      GetDestinationsByCodeUseCase());

  getIt.registerSingleton<GetHistoryBookingsUseCase>(
      GetHistoryBookingsUseCase());
}
