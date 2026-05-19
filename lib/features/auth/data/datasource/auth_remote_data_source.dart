import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:start2/core/helper_function/api.dart';
import 'dart:developer';
import 'package:start2/features/auth/data/models/user_model.dart';

class AuthRemoteDataSource {
  final ApiHandel apiHandel;

  AuthRemoteDataSource(this.apiHandel);

  Future<Either<DioException, String>> sendOtpCode(
    Map<String, dynamic> data,
  ) async {
    var response = await apiHandel.post('user/send_otp_code', data);
    log(response.toString());
    return response.fold((l) => Left(l), (r) => Right(r.data['data']));
  }

  Future<Either<DioException, UserModel>> checkCode(
    Map<String, dynamic> data,
  ) async {
    var response = await apiHandel.post('user/check_code', data);
    log(response.toString());
    return response.fold((l) => Left(l), (r) {
      return Right(UserModel.fromJson(r.data['data']));
    });
  }

  Future<Either<DioException, UserModel>> updateProfile(
    Map<String, dynamic> data,
  ) async {
    var response = await apiHandel.post('user/update_profile', data);
    log(response.toString());
    return response.fold((l) => Left(l), (r) {
      return Right(UserModel.fromJson(r.data['data']));
    });
  }

  Future<Either<DioException, UserModel>> getProfile() async {
    var response = await apiHandel.get('user/get_profile');
    log(response.toString());
    return response.fold((l) => Left(l), (r) {
      return Right(UserModel.fromJson(r.data['data']));
    });
  }
}
