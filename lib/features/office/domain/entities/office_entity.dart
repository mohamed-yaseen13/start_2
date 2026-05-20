class OfficeEntity {
  int? id;
  String? marketImage;
  String? marketCover;
  String? marketCategory;
  String? marketName;
  String? marketBio;
  String? marketPhone;
  String? workHours;
  String? address;
  int? marketViewCount;
  int? carsCount;
  int? estatesCount;
  int? needsCount;
  int? followersCount;
  int? carsVideoCount;
  int? estatesVideoCount;
  int? carsRawCount;
  int? estatesRawCount;
  int? adsCount;
  int? videoCount;
  int? rateAvg;
  bool? isFollowing;
  bool? isRate;

  OfficeEntity({
    this.id,
    this.marketImage,
    this.marketCover,
    this.marketCategory,
    this.marketName,
    this.marketBio,
    this.marketPhone,
    this.workHours,
    this.address,
    this.marketViewCount,
    this.carsCount,
    this.estatesCount,
    this.needsCount,
    this.followersCount,
    this.carsVideoCount,
    this.estatesVideoCount,
    this.carsRawCount,
    this.estatesRawCount,
    this.adsCount,
    this.videoCount,
    this.rateAvg,
    this.isFollowing,
    this.isRate,
  });
}
