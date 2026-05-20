import 'package:flutter/material.dart';
import '../../features/language/presentation/provider/language_provider.dart';

class SeeAllWidget extends StatelessWidget {
  final Function() onTap;
  const SeeAllWidget({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Text(
        LanguageProvider.translate("global", "see_all"),
        style: theme.textTheme.bodyMedium!.copyWith(
          color: theme.colorScheme.primary,
        ),
      ),
    );
  }
}
