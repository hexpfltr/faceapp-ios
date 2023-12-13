import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

/// Helper class for managing themes and colors.
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.whiteA700,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return colorScheme.onSurface;
        }),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.gray10001,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: colorScheme.primary,
          fontSize: 16.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: colorScheme.primary,
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: colorScheme.errorContainer,
          fontSize: 11.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        headlineLarge: TextStyle(
          color: colorScheme.primary,
          fontSize: 30.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        headlineMedium: TextStyle(
          color: colorScheme.primary,
          fontSize: 27.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        headlineSmall: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 24.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        labelLarge: TextStyle(
          color: colorScheme.errorContainer,
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          color: colorScheme.primary,
          fontSize: 20.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        titleMedium: TextStyle(
          color: colorScheme.primary,
          fontSize: 18.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          color: colorScheme.primary,
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFF000000),
    primaryContainer: Color(0XFF202244),
    secondary: Color(0XFF202244),
    secondaryContainer: Color(0XFF34A853),
    tertiary: Color(0XFF202244),
    tertiaryContainer: Color(0XFF34A853),

    // Background colors
    background: Color(0XFF202244),

    // Surface colors
    surface: Color(0XFF202244),
    surfaceTint: Color(0XFF2D264B),
    surfaceVariant: Color(0XFF34A853),

    // Error colors
    error: Color(0XFF2D264B),
    errorContainer: Color(0XFF979797),
    onError: Color(0XFFEAEAEA),
    onErrorContainer: Color(0XFF202244),

    // On colors(text colors)
    onBackground: Color(0XFFFFC926),
    onInverseSurface: Color(0XFFEAEAEA),
    onPrimary: Color(0XFF2D264B),
    onPrimaryContainer: Color(0XFFFFC926),
    onSecondary: Color(0XFFFFC926),
    onSecondaryContainer: Color(0XFF202244),
    onTertiary: Color(0XFFFFC926),
    onTertiaryContainer: Color(0XFF202244),

    // Other colors
    outline: Color(0XFF2D264B),
    outlineVariant: Color(0XFF202244),
    scrim: Color(0XFF202244),
    shadow: Color(0XFF2D264B),

    // Inverse colors
    inversePrimary: Color(0XFF202244),
    inverseSurface: Color(0XFF2D264B),

    // Pending colors
    onSurface: Color(0XFFFFC926),
    onSurfaceVariant: Color(0XFF202244),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Amber
  Color get amber500 => Color(0XFFFFC107);
  Color get amber50001 => Color(0XFFF5BE18);

  // Blue
  Color get blue300 => Color(0XFF55ACEE);
  Color get blueA400 => Color(0XFF1877F2);

  // BlueGray
  Color get blueGray100 => Color(0XFFD9D9D9);
  Color get blueGray400 => Color(0XFF888888);
  Color get blueGray50 => Color(0XFFE9EDED);
  Color get blueGray900 => Color(0XFF313131);

  // Gray
  Color get gray100 => Color(0XFFF8F7F7);
  Color get gray10001 => Color(0XFFF6F6F6);
  Color get gray10002 => Color(0XFFF7F6F6);
  Color get gray200 => Color(0XFFECECEC);
  Color get gray20001 => Color(0XFFEBEBEB);
  Color get gray20002 => Color(0XFFEFEFEF);
  Color get gray20003 => Color(0XFFE8E8E8);
  Color get gray20004 => Color(0XFFE7E7E7);
  Color get gray20005 => Color(0XFFF0EFEF);
  Color get gray300 => Color(0XFFE0E0E0);
  Color get gray30001 => Color(0XFFE3E3E3);
  Color get gray400 => Color(0XFFC4C4C4);
  Color get gray500 => Color(0XFF999999);
  Color get gray600 => Color(0XFF6E6E6E);

  // Green
  Color get green500 => Color(0XFF3CE443);
  Color get green600 => Color(0XFF45AC43);

  // Indigo
  Color get indigo900 => Color(0XFF113984);

  // Lime
  Color get lime900 => Color(0XFF946021);

  // Orange
  Color get orange700 => Color(0XFFE77D00);

  // Red
  Color get red500 => Color(0XFFFF2929);
  Color get redA400 => Color(0XFFFF1818);

  // White
  Color get whiteA700 => Color(0XFFFFFFFF);

  // Yellow
  Color get yellow800 => Color(0XFFF79D15);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
