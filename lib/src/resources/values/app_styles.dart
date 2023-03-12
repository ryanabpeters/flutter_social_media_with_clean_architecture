import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_dimensions.dart';

/// The resource class for storing app level style constants.
class AppStyles {
  /// The default text field decoration.
  static InputDecoration textFieldDecoration = InputDecoration(
    filled: true,
    fillColor: AppColors.textFieldFillColor,
    enabledBorder: textFieldBorderEnabled,
    focusedBorder: textFieldBorderFocused,
    errorBorder: textFieldBorderError,
  );

  /// The default border side when enabled.
  static const BorderSide textFieldEnabledBorderSide =
      BorderSide(color: AppColors.textFieldBorderColorEnabled);

  /// The default border side when focused.
  static const BorderSide textFieldFocusedBorderSide =
      BorderSide(color: AppColors.textFieldBorderColorFocused);

  /// The default border side when there is an error.
  static const BorderSide textFieldErrorBorderSide =
      BorderSide(color: AppColors.textFieldBorderColorError);

  /// The default Border radius.
  static BorderRadius textFieldBorderRadius =
      BorderRadius.circular(AppDimensions.textFieldBorderRadius);

  /// The default border when enabled.
  static OutlineInputBorder textFieldBorderEnabled = OutlineInputBorder(
    borderSide: textFieldEnabledBorderSide,
    borderRadius: textFieldBorderRadius,
  );

  /// The default border when focused.
  static OutlineInputBorder textFieldBorderFocused = OutlineInputBorder(
    borderSide: textFieldFocusedBorderSide,
    borderRadius: textFieldBorderRadius,
  );

  /// The default border when there is an error.
  static OutlineInputBorder textFieldBorderError = OutlineInputBorder(
    borderSide: textFieldErrorBorderSide,
    borderRadius: textFieldBorderRadius,
  );
}
