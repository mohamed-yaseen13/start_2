import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:start2/core/Theme/app_theme.dart';
import 'package:start2/core/constants/app_images.dart';
import 'package:start2/features/language/presentation/provider/language_provider.dart';

class CarAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool isFavorited;

  const CarAppBar({super.key, required this.isFavorited});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        LanguageProvider.translate('global', 'car_details'),
        style: context.text.titleMedium,
      ),
      actions: [
        SvgPicture.asset(
          isFavorited ? AppImages.favoriteHeartIcon : AppImages.heartIcon,
        ),
        SizedBox(width: 8.w),
        SvgPicture.asset(AppImages.shareIcon),
        SizedBox(width: 24.w),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
