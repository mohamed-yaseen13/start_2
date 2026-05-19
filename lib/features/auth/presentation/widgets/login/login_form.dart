import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:start2/core/Theme/app_theme.dart';
import 'package:start2/core/widgets/checkbox_widget.dart';
import 'package:start2/core/widgets/list_text_field_widget.dart';
import 'package:start2/features/auth/presentation/providers/login/login_operations.dart';
import 'package:start2/features/auth/presentation/providers/login/login_provider.dart';
import 'package:start2/features/language/presentation/provider/language_provider.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final loginProvider = context.watch<LoginProvider>();
    return Form(
      key: loginProvider.formKey,
      child: Column(
        children: [
          ListTextFieldWidget(inputs: loginProvider.loginInputs),
          SizedBox(height: 24.h),
          Row(
            children: [
              CheckBoxWidget(
                check: loginProvider.isAcceptTerms,
                onChange: (value) {
                  loginProvider.toggleAccecptTerms();
                },
              ),
              SizedBox(width: 12.w),
              Text(
                LanguageProvider.translate('auth', 'accecpt'),
                style: context.text.bodyMedium,
              ),
              SizedBox(width: 4.w),
              GestureDetector(
                onTap: () {},
                child: Text(
                  LanguageProvider.translate('auth', 'terms'),
                  style: context.text.bodyMedium!.copyWith(
                    color: context.colors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: context.colors.primary,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
