import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get bodoniMT {
    return copyWith(
      fontFamily: 'Bodoni MT',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.63),
      );
// Display text style
  static get displayMedium45 => theme.textTheme.displayMedium!.copyWith(
        fontSize: 45.fSize,
      );
// Headline text style
  static get headlineLarge30 => theme.textTheme.headlineLarge!.copyWith(
        fontSize: 30.fSize,
      );
  static get headlineLargePrimary => theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 30.fSize,
      );
  static get headlineMediumBlack900 => theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.5),
      );
// Title text style
  static get titleLargeOnPrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
}
