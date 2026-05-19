class UserEntity {
  int id;
  String? firstName;
  String? lastName;
  String? image;
  String phone;
  String? email;
  num wallet;
  bool verified;
  String? marketName;
  String? marketBio;
  String? marketPhone;
  String? workHours;
  String? address;
  String? marketImage;
  String? marketCover;
  // TODO: market category class
  int lastReadNotification;
  String? token;
  int unReadCount;

  UserEntity({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.image,
    required this.phone,
    required this.email,
    required this.wallet,
    required this.verified,
    required this.marketName,
    required this.marketBio,
    required this.marketPhone,
    required this.workHours,
    required this.address,
    required this.marketImage,
    required this.marketCover,
    required this.lastReadNotification,
    required this.token,
    required this.unReadCount,
  });
}
