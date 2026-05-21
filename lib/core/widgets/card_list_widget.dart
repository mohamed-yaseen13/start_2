import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:start2/core/models/card_entity.dart';
import 'package:start2/core/widgets/card_widget.dart';
import 'package:start2/core/widgets/see_all_widget.dart';

class CardListWidget extends StatelessWidget {
  final String text;
  final List<CardEntity> cards;

  const CardListWidget({super.key, required this.text, required this.cards});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SeeAllWidget(
          text: text,
          onTap: () {
            // see all cars or estates
          },
        ),
        SizedBox(height: 16.w),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(cards.length, (index) {
              return Padding(
                padding: EdgeInsets.only(left: 18.w),
                child: CardWidget(card: cards[index]),
              );
            }),
          ),
        ),
      ],
    );
  }
}
