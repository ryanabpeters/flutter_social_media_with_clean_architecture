import 'package:flutter/material.dart';

import '../resources/values/app_colors.dart';
import '../resources/values/app_dimensions.dart';

/// The main custom theme class of the app.
class CustomTheme {
  static const AppBarTheme _appBarTheme = AppBarTheme(
    backgroundColor: AppColors.appBarColor,
    elevation: AppDimensions.appBarElevation,
    iconTheme: IconThemeData(color: AppColors.iconColor),
  );

  static const TextTheme _appTextTheme = TextTheme(
    titleLarge: TextStyle(color: AppColors.textColor),
    titleMedium: TextStyle(color: AppColors.textColor),
    titleSmall: TextStyle(color: AppColors.textColor),
    bodyLarge: TextStyle(color: AppColors.textColor),
    bodyMedium: TextStyle(color: AppColors.textColor),
    bodySmall: TextStyle(color: AppColors.textColor),
  );

  static const IconThemeData _appIconTheme =
      IconThemeData(color: AppColors.iconColor);

  /// Returns the specifications of the general app theme.
  ThemeData theme() {
    return ThemeData(
      scaffoldBackgroundColor: AppColors.appScaffoldColor,
      appBarTheme: _appBarTheme,
      textTheme: _appTextTheme,
      iconTheme: _appIconTheme,
    );
  }
}
