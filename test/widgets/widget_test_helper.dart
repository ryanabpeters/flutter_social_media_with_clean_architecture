import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_social_media_with_clean_architecture/main.dart';
import 'package:flutter_social_media_with_clean_architecture/src/resources/values/app_strings.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WidgetTestHelper {
  static Future<void> prepareAndTest({
    required final String name,
    required final void Function() test,
    final Widget? testWidget,
  }) async {
    return testWidgets(name, (final WidgetTester tester) async {
      WidgetsFlutterBinding.ensureInitialized();
      SharedPreferences.setMockInitialValues(<String, Object>{});
      await EasyLocalization.ensureInitialized();

      await tester.pumpWidget(
        EasyLocalization(
          supportedLocales: const <Locale>[Locale(AppStrings.englishLocale)],
          path: AppStrings.translationAssetPath,
          fallbackLocale: const Locale(AppStrings.englishLocale),
          child: testWidget != null
              ? MaterialApp(
                  home: testWidget,
                )
              : const MyApp(),
        ),
      );
      await tester.pumpAndSettle();
    });
  }
}
