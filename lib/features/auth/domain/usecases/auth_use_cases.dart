import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:start2/features/auth/domain/entities/user_entity.dart';
import 'package:start2/features/auth/domain/repositories/auth_repo.dart';

class AuthUseCases {
  AuthRepo authRepo;

  AuthUseCases(this.authRepo);

  Future<Either<DioException, String>> sendOtpCode(
    Map<String, dynamic> data,
  ) async {
    return authRepo.sendOtpCode(data);
  }

  Future<Either<DioException, UserEntity>> checkCode(
    Map<String, dynamic> data,
  ) async {
    return authRepo.checkCode(data);
  }

  Future<Either<DioException, UserEntity>> updateProfile(
    Map<String, dynamic> data,
  ) async {
    return authRepo.updateProfile(data);
  }

  Future<Either<DioException, UserEntity>> getProfile() async {
    return authRepo.getProfile();
  }

  Future<Either<DioException, String>> refreshToken(
    Map<String, dynamic> data,
  ) async {
    return authRepo.refreshToekn(data);
  }
}
