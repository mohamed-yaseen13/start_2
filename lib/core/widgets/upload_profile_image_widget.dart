import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:start2/features/auth/presentation/providers/profile/profile_operations.dart';
import 'package:start2/features/auth/presentation/providers/profile/profile_provider.dart';
import '../Theme/app_theme.dart';
import '../../features/language/presentation/provider/language_provider.dart';

class UploadProfileImageWidget extends StatelessWidget {
  const UploadProfileImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final profileProvider = context.watch<ProfileProvider>();

    return InkWell(
      onTap: () async {
        FocusScope.of(context).unfocus();
        profileProvider.pickProfileImage();
      },
      child: Column(
        children: [
          SizedBox(
            width: .12.sh,
            height: .12.sh,
            child: Stack(
              children: [
                Container(
                  width: .30.sw,
                  height: .30.sw,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: profileProvider.showUserImage(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 1.h),
          Text(
            LanguageProvider.translate('auth', 'upload_image'),
            style: theme.textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
