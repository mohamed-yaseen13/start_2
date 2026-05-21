import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:start2/core/Theme/app_theme.dart';
import 'package:start2/core/models/card_entity.dart';

class CardImageWidget extends StatelessWidget {
  final CardEntity card;

  const CardImageWidget({super.key, required this.card});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180.w,
      height: 180.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
        image: DecorationImage(
          image: AssetImage(card.image),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Spacer(),
              Container(
                width: card.type == "مميز" ? 82.w : 42.w,
                height: 22.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.r),
                    bottomRight: Radius.circular(8.r),
                  ),
                  color: card.type == "مميز"
                      ? Color(0xFFFFAA00)
                      : context.colors.primary,
                ),
                child: Center(
                  child: Text(card.type, style: context.text.bodyMedium),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
