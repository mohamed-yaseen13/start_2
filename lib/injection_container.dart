import 'package:get_it/get_it.dart';
import 'package:start2/core/helper_function/api.dart';
import 'package:start2/features/auth/data/datasource/auth_remote_data_source.dart';
import 'package:start2/features/auth/data/repositories/auth_repo_imp.dart';
import 'package:start2/features/auth/domain/repositories/auth_repo.dart';
import 'package:start2/features/auth/domain/usecases/auth_use_cases.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  // API
  sl.registerSingleton<ApiHandel>(ApiHandel.getInstance);

  // Auth
  sl.registerSingleton<AuthRemoteDataSource>(AuthRemoteDataSource(sl.get()));
  sl.registerSingleton<AuthRepo>(AuthRepoImp(sl.get()));
  sl.registerSingleton<AuthUseCases>(AuthUseCases(sl.get()));
}
