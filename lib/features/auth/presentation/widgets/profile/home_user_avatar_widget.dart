import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:start2/core/theme/app_theme.dart';
import 'package:start2/features/auth/presentation/providers/profile/profile_operations.dart';
import 'package:start2/features/auth/presentation/providers/profile/profile_provider.dart';
import 'package:start2/features/language/presentation/provider/language_provider.dart';

class HomeUserAvatarWidget extends StatelessWidget {
  const HomeUserAvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final profileProvider = context.watch<ProfileProvider>();

    return Row(
      children: [
        CircleAvatar(
          foregroundImage: profileProvider.showUserImage(),
          radius: 24.r,
        ),
        SizedBox(width: 8.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 8.h),
            Text(
              LanguageProvider.translate('home', 'hi'),
              style: context.text.titleMedium,
            ),
            SizedBox(height: 8.h),
            Text(profileProvider.userEntity!.fullName),
          ],
        ),
      ],
    );
  }
}
