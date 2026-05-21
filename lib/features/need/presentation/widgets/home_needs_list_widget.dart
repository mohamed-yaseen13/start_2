import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:start2/core/widgets/see_all_widget.dart';
import 'package:start2/features/need/presentation/providers/need_provider.dart';
import 'package:start2/features/need/presentation/widgets/home_need_widget.dart';

class HomeNeedsListWidget extends StatelessWidget {
  const HomeNeedsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final needProvider = context.watch<NeedProvider>();

    return Column(
      children: [
        SeeAllWidget(
          text: 'need',
          onTap: () {
            // see all needs
          },
        ),
        SizedBox(height: 16.w),
        Column(
          children: List.generate(needProvider.needs.length, (index) {
            return HomeNeedWidget(need: needProvider.needs[index]);
          }),
        ),
      ],
    );
  }
}
