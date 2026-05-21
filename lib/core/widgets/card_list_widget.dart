import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:start2/core/models/card_entity.dart';
import 'package:start2/core/widgets/card_widget.dart';
import 'package:start2/core/widgets/see_all_widget.dart';

class CardListWidget extends StatelessWidget {
  final String text;
  final List<CardEntity> cards;
  final Function() onTap;
  final double? width;
  final Function() onCardTap;

  const CardListWidget({
    super.key,
    required this.text,
    required this.cards,
    required this.onTap,
    required this.onCardTap,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SeeAllWidget(text: text, onTap: onTap),
        SizedBox(height: 16.w),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(cards.length, (index) {
              return Padding(
                padding: EdgeInsets.only(left: 18.w),
                child: CardWidget(
                  onTap: onCardTap,
                  width: width,
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
