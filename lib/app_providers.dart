import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:start2/core/models/progress_provider.dart';
import 'package:start2/features/onboarding/presentation/providers/onboarding_provider.dart';
import 'package:start2/features/splash_screen/presentation/providers/splash_provider.dart';
import 'core/Theme/theme_provider.dart';
import 'features/language/presentation/provider/language_provider.dart';

class AppProviders extends StatelessWidget {
  const AppProviders({super.key, required this.child, required this.language});
  final Widget child;
  final LanguageProvider language;
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => language),
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider(create: (_) => SplashProvider()),
        ChangeNotifierProvider(create: (_) => OnboardingProvider()),
        ChangeNotifierProvider(create: (_) => ProgressProvider()),
      ],
      child: child,
    );
  }
}
