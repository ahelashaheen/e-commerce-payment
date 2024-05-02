import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary,
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
      );
// Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        border: Border.all(
          color: appTheme.black900.withOpacity(0.45),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        border: Border.all(
          color: appTheme.black900.withOpacity(0.33),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBlack9001 => BoxDecoration(
        color: theme.colorScheme.onPrimary,
        border: Border.all(
          color: appTheme.black900.withOpacity(0.4),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBlack9002 => BoxDecoration(
        border: Border.all(
          color: appTheme.black900.withOpacity(0.05),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBlack9003 => BoxDecoration(
        color: theme.colorScheme.onPrimary,
        border: Border.all(
          color: appTheme.black900.withOpacity(0.39),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBlack9004 => BoxDecoration(
        color: theme.colorScheme.onPrimary,
        border: Border.all(
          color: appTheme.black900.withOpacity(0.29),
          width: 1.h,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder7 => BorderRadius.circular(
        7.h,
      );
// Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder23 => BorderRadius.circular(
        23.h,
      );
  static BorderRadius get roundedBorder26 => BorderRadius.circular(
        26.h,
      );
}
