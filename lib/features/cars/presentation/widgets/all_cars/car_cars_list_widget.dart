import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:start2/core/models/card_entity.dart';
import 'package:start2/core/models/card_mapper.dart';
import 'package:start2/core/widgets/card/card_widget.dart';
import 'package:start2/features/cars/presentation/providers/car_provider.dart';

class CarCarsListWidget extends StatelessWidget {
  const CarCarsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final carProvider = context.watch<CarProvider>();
    final List<CardEntity> cards = CardMapper.toCardEntityList(
      carProvider.carCars,
    );

    return Column(
      children: List.generate(cards.length, (index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 12.h),
          child: CardWidget(
            onTap: () {
              carProvider.onCarTap(carProvider.carCars[index]);
            },
            card: cards[index],
          ),
        );
      }),
    );
  }
}
