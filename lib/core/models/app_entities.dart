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

class Seller {
  int? id;
  String? name;

  Seller({this.id, this.name});
}
