import 'package:flutter/material.dart';
import 'package:start2/core/Theme/app_theme.dart';
import '../../features/language/presentation/provider/language_provider.dart';

class SeeAllWidget extends StatelessWidget {
  final Function() onTap;
  final String text;

  const SeeAllWidget({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      children: [
        Text(
          LanguageProvider.translate('global', text),
          style: context.text.titleMedium,
        ),
        Spacer(),
        GestureDetector(
          onTap: () {
            onTap();
          },
          child: Text(
            LanguageProvider.translate("global", "see_all"),
            style: theme.textTheme.bodyMedium!.copyWith(
              color: theme.colorScheme.primary,
            ),
          ),
        ),
      ],
    );
  }
}
