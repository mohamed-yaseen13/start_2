import 'package:start2/core/models/app_entities.dart';
import 'package:start2/core/models/card_mapper.dart';
import 'package:start2/features/area/domain/entities/area_entity.dart';

class EstateEntity implements Cardable {
  int? id;
  int? userId;
  String? title;
  String? type;
  String? video;
  String? cover;
  int? estateCategoryId;
  String? price;
  String? address; // doesn't exist at the postman collection
  AreaEntity? area;
  int? floor;
  int? estateSellerId;
  int? roomNumbers;
  String? furniture;
  List<String>? direction;
  String? estateType;
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
  int? whats;
  int? phone;
  int? message;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;
  String? lastUpdate;
  int? favoritesCount;
  bool? isFavorited;
  bool? isSpecial;
  Category? category;
  List<Feature>? features;
  List<Feature>? tags;
  Seller? seller;
  List<String>? images;

  EstateEntity({
    this.id,
    this.userId,
    this.title,
    this.type,
    this.video,
    this.cover,
    this.estateCategoryId,
    this.price,
    this.address, // doesn't exist at the postman collection
    this.area,
    this.floor,
    this.estateSellerId,
    this.roomNumbers,
    this.furniture,
    this.direction,
    this.estateType,
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
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.lastUpdate,
    this.favoritesCount,
    this.isFavorited,
    this.isSpecial,
    this.category,
    this.features,
    this.tags,
    this.seller,
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
}
