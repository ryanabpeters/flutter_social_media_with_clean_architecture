import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'src/config/app_theme.dart';
import 'src/config/router/app_router.dart';
import 'src/resources/values/app_strings.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const <Locale>[Locale(AppStrings.englishLocale)],
      path: AppStrings.translationAssetPath,
      fallbackLocale: const Locale(AppStrings.englishLocale),
      child: const MyApp(),
    ),
  );
}

/// The class of the app.
class MyApp extends StatelessWidget {
  /// The MyApp constructor.
  const MyApp({super.key});

  @override
  Widget build(final BuildContext context) {
    return MaterialApp.router(
      title: AppStrings.title,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: CustomTheme().theme(),
      routerConfig: AppRouter().router,
    );
  }
}
