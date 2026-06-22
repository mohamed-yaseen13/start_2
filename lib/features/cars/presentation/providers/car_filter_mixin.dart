import 'package:flutter/material.dart';
import 'package:start2/core/models/app_entities.dart';
import 'package:start2/core/models/provider_structure_model.dart';

mixin CarFilterMixin on ChangeNotifier
    implements SelectedProviderModel<Filter> {
  List<Filter> filters = [
    Filter(id: 1, name: 'all'),
    Filter(id: 2, name: 'sell'),
    Filter(id: 3, name: 'rent'),
    Filter(id: 4, name: 'needed_cars'),
  ];

  @override
  Filter? selectedEntity;

  @override
  bool isSelected(Filter entity) => selectedEntity?.id == entity.id;

  @override
  Future<dynamic> onSelect(Filter entity) async {
    selectedEntity = entity;
    notifyListeners();
  }

  void initFilter() {
    selectedEntity = filters[0];
  }
}
