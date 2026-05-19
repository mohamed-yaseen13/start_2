import 'package:get_it/get_it.dart';
import 'package:start2/core/helper_function/api.dart';
import 'package:start2/features/auth/data/datasource/auth_remote_data_source.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  sl.registerSingleton<ApiHandel>(ApiHandel.getInstance);
  // Auth
  sl.registerSingleton<AuthRemoteDataSource>(AuthRemoteDataSource(sl.get()));
}
