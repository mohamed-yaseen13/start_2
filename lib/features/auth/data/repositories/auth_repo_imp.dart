import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:start2/features/auth/data/datasource/auth_remote_data_source.dart';
import 'package:start2/features/auth/domain/entities/user_entity.dart';
import 'package:start2/features/auth/domain/repositories/auth_repo.dart';

class AuthRepoImp implements AuthRepo {
  final AuthRemoteDataSource authRemoteDataSource;

  AuthRepoImp(this.authRemoteDataSource);

  @override
  Future<Either<DioException, String>> sendOtpCode(Map<String, dynamic> data) {
    return authRemoteDataSource.sendOtpCode(data);
  }

  @override
  Future<Either<DioException, UserEntity>> checkCode(
    Map<String, dynamic> data,
  ) {
    return authRemoteDataSource.checkCode(data);
  }

  @override
  Future<Either<DioException, UserEntity>> updateProfile(
    Map<String, dynamic> data,
  ) {
    return authRemoteDataSource.updateProfile(data);
  }

  @override
  Future<Either<DioException, UserEntity>> getProfile() {
    return authRemoteDataSource.getProfile();
  }

  @override
  Future<Either<DioException, String>> refreshToekn(Map<String, dynamic> data) {
    return authRemoteDataSource.refreshToken(data);
  }
}
