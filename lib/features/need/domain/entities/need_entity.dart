import 'package:start2/core/models/app_entities.dart';
import 'package:start2/features/area/domain/entities/area_entity.dart';

class NeedEntity {
  int? id;
  int? userId;
  String? type;
  bool? isRent;
  int? areaId;
  String? price;
  String? description;
  int? brandModelId;
  String? createdAt;
  String? updatedAt;
  AreaEntity? area;
  BrandModel? brandModel;

  NeedEntity({
    this.id,
    this.userId,
    this.type,
    this.isRent,
    this.areaId,
    this.price,
    this.description,
    this.brandModelId,
    this.createdAt,
    this.updatedAt,
    this.area,
    this.brandModel,
  });
}
