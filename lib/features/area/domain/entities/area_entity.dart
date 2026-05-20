import 'package:start2/features/city/domain/entities/city_entity.dart';

class AreaEntity {
  int? id;
  int? cityId;
  String? name;
  CityEntity? city;

  AreaEntity({this.id, this.cityId, this.name, this.city});
}
