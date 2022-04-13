// Package imports:
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Project imports:
import 'package:flutter_boilerplate_riverpod/data/datasources/remote/auth/auth_api.dart';
import 'package:flutter_boilerplate_riverpod/data/datasources/remote/todo/todo_api.dart';
import 'package:flutter_boilerplate_riverpod/data/datasources/sharedpref/shared_preference_helper.dart';
import 'package:flutter_boilerplate_riverpod/data/repositories/auth_repository_impl.dart';
import 'package:flutter_boilerplate_riverpod/data/repositories/post_repository_impl.dart';
import 'package:flutter_boilerplate_riverpod/domain/repositories/auth_repository.dart';
import 'package:flutter_boilerplate_riverpod/domain/repositories/todo_repository.dart';
import 'package:flutter_boilerplate_riverpod/domain/usecases/auth/auth_usecase.dart';
import 'package:flutter_boilerplate_riverpod/domain/usecases/todo/todo_usecase.dart';
import 'module/local_module.dart';
import 'module/network_module.dart';

part 'api_injector.dart';
part 'repository_injector.dart';
part 'usecase_injector.dart';

final getIt = GetIt.instance;

Future<void> initializeDependencies() async {
  // async singletons:----------------------------------------------------------
  getIt.registerSingletonAsync<SharedPreferences>(
      () => LocalModule.provideSharedPreferences());

  // singletons:----------------------------------------------------------------
  getIt.registerSingleton(
      SharedPreferenceHelper(await getIt.getAsync<SharedPreferences>()));
  getIt.registerSingleton<Dio>(
      NetworkModule.provideDio(getIt<SharedPreferenceHelper>()));

  getIt.registerSingleton<FirebaseAuth>(FirebaseAuth.instance);

  setupApiDependencies(getIt);

  setupRepositoryDependencies(getIt);

  setupUseCaseDependencies(getIt);
}
