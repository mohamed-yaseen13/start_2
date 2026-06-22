import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:start2/core/models/card_entity.dart';
import 'package:start2/core/models/card_mapper.dart';
import 'package:start2/core/widgets/card/card_widget.dart';
import 'package:start2/core/widgets/see_all_widget.dart';
import 'package:start2/features/cars/presentation/providers/car_provider.dart';

class HomeCarsListWidget extends StatelessWidget {
  const HomeCarsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final carProvider = context.watch<CarProvider>();
    final List<CardEntity> cards = CardMapper.toCardEntityList(
      carProvider.homeCars,
    );

    return Column(
      children: [
        SeeAllWidget(
          text: 'the_cars',
          onTap: () {
            carProvider.goTo();
          },
        ),
        SizedBox(height: 16.w),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(cards.length, (index) {
              return Padding(
                padding: EdgeInsets.only(left: 18.w),
                child: CardWidget(
                  onTap: () {
                    carProvider.onCarTap(carProvider.homeCars[index]);
                  },
                  width: 180.w,
                  card: cards[index],
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
