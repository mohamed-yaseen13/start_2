import 'package:start2/features/city/domain/entities/city_entity.dart';

class AreaEntity {
  int id;
  int? cityId;
  String name;
  CityEntity? city;

  AreaEntity({required this.id, this.cityId, required this.name, this.city});
}
