import 'package:start2/features/area/domain/entities/area_entity.dart';

class CarEntity {
  int? id;
  int? userId;
  String? title;
  int? brandModelId;
  String? type;
  String? video;
  String? cover;
  int? carCategoryId;
  int? countryId;
  String? price;
  bool? isNew;
  String? gear;
  String? year;
  int? km;
  String? color;
  String? fuelType;
  int? cc;
  String? paint;
  String? sellerType;
  bool? haveRoof;
  String? upholstery;
  int? seatNumber;
  String? carType;
  int? areaId;
  double? lat;
  double? lng;
  bool? canRate;
  int? showRate;
  String? description;
  String? status;
  String? cancelReason;
  String? rentType;
  int? viewCount;
  int? callCount;
  int? whats; // i think it will be bool
  int? phone; // i think it will be bool
  int? message; // i think it will be bool
  String? address;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;
  String? lastUpdate;
  int? favoritesCount;
  bool? isFavorited;
  bool? isSpecial;
  AreaEntity? area;
  Category? category;
  List<Feature>? features;
  List<Feature>? tags;
  BrandModel? brandModel;
  Country? country;
  List<String>? images;

  CarEntity({
    this.id,
    this.userId,
    this.title,
    this.brandModelId,
    this.type,
    this.video,
    this.cover,
    this.carCategoryId,
    this.countryId,
    this.price,
    this.isNew,
    this.gear,
    this.year,
    this.km,
    this.color,
    this.fuelType,
    this.cc,
    this.paint,
    this.sellerType,
    this.haveRoof,
    this.upholstery,
    this.seatNumber,
    this.carType,
    this.areaId,
    this.lat,
    this.lng,
    this.canRate,
    this.showRate,
    this.description,
    this.status,
    this.cancelReason,
    this.rentType,
    this.viewCount,
    this.callCount,
    this.whats,
    this.phone,
    this.message,
    this.address,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.lastUpdate,
    this.favoritesCount,
    this.isFavorited,
    this.isSpecial,
    this.area,
    this.category,
    this.features,
    this.tags,
    this.brandModel,
    this.country,
    this.images,
  });
}

class Category {
  int? id;
  String? name;

  Category({this.id, this.name});
}

class Feature {
  int? id;
  String? type;
  String? name;
  Pivot? pivot;

  Feature({this.id, this.type, this.name, this.pivot});
}

class Pivot {
  String? featureableType;
  int? featureableId;
  int? featureId;
  Pivot({this.featureableType, this.featureableId, this.featureId});
}

class BrandModel {
  int? id;
  int? brandId;
  String? name;
  Brand? brand;

  BrandModel({this.id, this.brandId, this.name, this.brand});
}

class Brand {
  int? id;
  String? name;

  Brand({this.id, this.name});
}

class Country {
  int? id;
  String? name;

  Country({this.id, this.name});
}
