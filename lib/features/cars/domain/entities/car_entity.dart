import 'package:start2/core/models/app_entities.dart';
import 'package:start2/core/models/card_mapper.dart';
import 'package:start2/features/area/domain/entities/area_entity.dart';

class CarEntity implements Cardable {
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

  @override
  String get cardImage => images!.first;
  @override
  String get cardType => type!;
  @override
  String get cardTitle => title!;
  @override
  String get cardAddress => address!;
  @override
  String get cardLastUpdate => lastUpdate!;
  @override
  String get cardPrice => price!;
  @override
  String get cardViewCount => viewCount!.toString();
  @override
  bool get cardIsFavorited => isFavorited!;
}
