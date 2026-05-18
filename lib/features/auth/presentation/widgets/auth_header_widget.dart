import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:start2/core/Theme/app_theme.dart';
import 'package:start2/features/language/presentation/provider/language_provider.dart';

class AuthHeaderWidget extends StatelessWidget {
  final String title;
  final String desc;

  const AuthHeaderWidget({super.key, required this.title, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          LanguageProvider.translate('auth', title),
          style: context.text.titleMedium,
        ),
        SizedBox(height: 8.h),
        Text(
          LanguageProvider.translate('auth', desc),
          style: context.text.bodyMedium,
        ),
      ],
    );
  }
}
