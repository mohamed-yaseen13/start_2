import 'package:flutter/material.dart';
import 'package:start2/features/need/domain/entities/need_entity.dart';

class NeedProvider extends ChangeNotifier {
  List<NeedEntity> needs = [
    NeedEntity(
      description: "مطلوب شراء سياره مرسيدس في الرياض",
      price: "30.00 ريال",
      updatedAt: "منذ 4 ايام",
    ),
    NeedEntity(
      description: "مطلوب شراء سياره مرسيدس في الرياض",
      price: "30.00 ريال",
      updatedAt: "منذ 4 ايام",
    ),
  ];
}
