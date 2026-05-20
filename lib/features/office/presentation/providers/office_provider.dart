import 'package:flutter/material.dart';
import 'package:start2/core/constants/app_images.dart';
import 'package:start2/features/office/domain/entities/office_entity.dart';

class OfficeProvider extends ChangeNotifier {
  List<OfficeEntity> offices = [
    OfficeEntity(marketImage: AppImages.office1, marketName: "مركز زون"),
    OfficeEntity(marketImage: AppImages.office2, marketName: "رضا البحه"),
    OfficeEntity(marketImage: AppImages.office3, marketName: "ورشه الصوان"),
    OfficeEntity(marketImage: AppImages.office4, marketName: "ورشه ميمي"),
  ];
}
