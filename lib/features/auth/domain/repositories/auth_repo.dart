import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:start2/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepo {
  Future<Either<DioException, String>> sendOtpCode(Map<String, dynamic> data);
  Future<Either<DioException, UserEntity>> checkCode(Map<String, dynamic> data);
  Future<Either<DioException, UserEntity>> updateProfile(
    Map<String, dynamic> data,
  );
  Future<Either<DioException, UserEntity>> getProfile();
  Future<Either<DioException, String>> refreshToekn(Map<String, dynamic> data);
}
