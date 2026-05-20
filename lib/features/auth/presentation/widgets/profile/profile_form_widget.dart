import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:start2/core/widgets/list_text_field_widget.dart';
import 'package:start2/features/auth/presentation/providers/profile/profile_provider.dart';

class ProfileFormWidget extends StatelessWidget {
  const ProfileFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final profileProvider = context.watch<ProfileProvider>();

    return Form(
      key: profileProvider.formKey,
      child: Column(
        children: [ListTextFieldWidget(inputs: profileProvider.userInputs)],
      ),
    );
  }
}
