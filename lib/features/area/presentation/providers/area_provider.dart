import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:start2/core/constants/app_images.dart';
import 'package:start2/core/models/drop_down_class.dart';
import 'package:start2/features/area/domain/entities/area_entity.dart';
import 'package:start2/features/language/presentation/provider/language_provider.dart';

class AreaProvider extends ChangeNotifier implements DropDownClass<AreaEntity> {
  AreaEntity? selectedEntity;

  List<AreaEntity> areasList = [
    AreaEntity(id: 1, name: 'Alexandria'),
    AreaEntity(id: 2, name: 'Cairo'),
  ];

  @override
  String displayedName() {
    return selectedEntity?.name ??
        LanguageProvider.translate('global', 'all_areas');
  }

  @override
  String displayedOptionName(AreaEntity type) {
    return type.name;
  }

  @override
  Widget? displayedOptionWidget(AreaEntity type) {
    return null;
  }

  @override
  Widget? displayedWidget() {
    return SvgPicture.asset(AppImages.locationIcon);
  }

  @override
  List<AreaEntity>? list() {
    return areasList;
  }

  @override
  Future<dynamic> onTap(AreaEntity? data) async {
    selectedEntity = data;
    notifyListeners();
  }

  @override
  bool require() {
    return false;
  }

  @override
  AreaEntity? selected() {
    return selectedEntity;
  }

  @override
  String? titleName() {
    return null;
  }

  @override
  value() {
    return selectedEntity?.id;
  }
}
