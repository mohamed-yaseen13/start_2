import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:start2/features/cars/presentation/providers/car_provider.dart';
import 'package:start2/features/cars/presentation/widgets/all_cars/car_filter_tab_widget.dart';

class CarFilterTabsListWidget extends StatelessWidget {
  const CarFilterTabsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final carProvider = context.watch<CarProvider>();
    return Row(
      children: List.generate(carProvider.filters.length, (index) {
        return CarFilterTabWidget(filter: carProvider.filters[index]);
      }),
    );
  }
}
