import 'package:start2/core/models/card_entity.dart';

class CardMapper {
  static CardEntity toCardEntity(Cardable item) {
    return CardEntity(
      image: item.cardImage,
      type: item.cardType,
      title: item.cardTitle,
      address: item.cardAddress,
      lastUpdate: item.cardLastUpdate,
      price: item.cardPrice,
      viewCount: item.cardViewCount,
    );
  }

  static List<CardEntity> toCardEntityList(List<Cardable> items) {
    return items.map((car) => toCardEntity(car)).toList();
  }
}

abstract class Cardable {
  String get cardImage;
  String get cardType;
  String get cardTitle;
  String get cardAddress;
  String get cardLastUpdate;
  String get cardPrice;
  String get cardViewCount;
}
