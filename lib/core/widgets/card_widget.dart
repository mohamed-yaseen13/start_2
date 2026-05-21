import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:start2/core/models/card_entity.dart';
import 'package:start2/core/widgets/card_details_widget.dart';
import 'package:start2/core/widgets/card_image_widget.dart';

class CardWidget extends StatelessWidget {
  final CardEntity card;

  const CardWidget({super.key, required this.card});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // car or estate details
      },
      child: Container(
        width: 180.w,
        height: 285.h,
        margin: EdgeInsets.only(bottom: 8.h, right: 4.w, left: 4.w),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color(0xFFD4E0EB),
              blurRadius: 5.r,
              spreadRadius: 0,
              offset: Offset(0.w, 1.23.h),
            ),
          ],
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Column(
          children: [
            CardImageWidget(card: card),
            SizedBox(height: 8.h),
            CardDetailsWidget(card: card),
          ],
        ),
      ),
    );
  }
}
