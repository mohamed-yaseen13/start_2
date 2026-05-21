class CardEntity {
  final String image;
  final String type;
  final String title;
  final String address;
  final String lastUpdate;
  final String price;
  final String viewCount;
  final bool isFavorited;

  CardEntity({
    required this.image,
    required this.type,
    required this.title,
    required this.address,
    required this.lastUpdate,
    required this.price,
    required this.viewCount,
    required this.isFavorited,
  });
}
