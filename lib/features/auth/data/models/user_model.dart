import 'package:start2/core/helper_function/convert.dart';
import 'package:start2/features/auth/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({
    required super.id,
    required super.firstName,
    required super.lastName,
    required super.image,
    required super.phone,
    required super.email,
    required super.wallet,
    required super.verified,
    required super.marketName,
    required super.marketBio,
    required super.marketPhone,
    required super.workHours,
    required super.address,
    required super.marketImage,
    required super.marketCover,
    required super.lastReadNotification,
    required super.token,
    required super.unReadCount,
  });

  factory UserModel.fromJson(Map json) {
    return UserModel(
      id: json['id'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      image: json['image'],
      phone: json['phone'],
      email: json['email'],
      wallet: convertDataToNum(json['wallet']),
      verified: convertDataToBool(json['verified']),
      marketName: json['market_name'],
      marketBio: json['market_bio'],
      marketPhone: json['market_phone'],
      workHours: json['work_hours'],
      address: json['address'],
      marketImage: json['market_image'],
      marketCover: json['market_cover'],
      lastReadNotification: json['last_read_notification'],
      token: json['token'],
      unReadCount: json['un_read_count'],
    );
  }
}
