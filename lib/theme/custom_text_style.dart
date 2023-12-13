import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLarge18 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 18.fSize,
      );
  static get bodyLarge18_1 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 18.fSize,
      );
  static get bodyLargeErrorContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 18.fSize,
      );
  static get bodyLargeErrorContainer17 => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 17.fSize,
      );
  static get bodyLargeInter => theme.textTheme.bodyLarge!.inter.copyWith(
        fontSize: 18.fSize,
      );
  static get bodyLargeInterOrange700 =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.orange700,
        fontSize: 18.fSize,
      );
  static get bodyLargeInter_1 => theme.textTheme.bodyLarge!.inter;
  static get bodyLargeNunitoWhiteA700 =>
      theme.textTheme.bodyLarge!.nunito.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyLargeWhiteA700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyLarge_1 => theme.textTheme.bodyLarge!;
  static get bodyMedium13 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 13.fSize,
      );
  static get bodyMedium15 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 15.fSize,
      );
  static get bodyMedium15_1 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 15.fSize,
      );
  static get bodyMediumErrorContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumErrorContainer13 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 13.fSize,
      );
  static get bodyMediumErrorContainer15 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 15.fSize,
      );
  static get bodyMediumErrorContainer15_1 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 15.fSize,
      );
  static get bodyMediumErrorContainer_1 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get bodyMediumErrorContainer_2 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get bodyMediumErrorContainer_3 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get bodyMediumGray20003 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray20003,
      );
  static get bodyMediumInter => theme.textTheme.bodyMedium!.inter.copyWith(
        fontSize: 13.fSize,
      );
  static get bodyMediumInterErrorContainer =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 13.fSize,
      );
  static get bodyMediumInterErrorContainer15 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 15.fSize,
      );
  static get bodyMediumInterErrorContainer_1 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get bodyMediumInter_1 => theme.textTheme.bodyMedium!.inter;
  static get bodyMediumInter_2 => theme.textTheme.bodyMedium!.inter;
  static get bodyMediumOrange700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.orange700,
      );
  static get bodyMediumSecondaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontSize: 15.fSize,
      );
  static get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyMediumWhiteA700_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmall12 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmall12_1 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallLight => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallNunito => theme.textTheme.bodySmall!.nunito.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 12.fSize,
      );
  static get bodySmallWhiteA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w300,
      );
  // Headline text style
  static get headlineLargeQuicksandLime900 =>
      theme.textTheme.headlineLarge!.quicksand.copyWith(
        color: appTheme.lime900,
        fontSize: 32.fSize,
        fontWeight: FontWeight.w400,
      );
  static get headlineLargeSemiBold => theme.textTheme.headlineLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get headlineMediumMedium => theme.textTheme.headlineMedium!.copyWith(
        fontSize: 26.fSize,
        fontWeight: FontWeight.w500,
      );
  static get headlineSmallPrimary => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 25.fSize,
      );
  static get headlineSmallPrimaryBold =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  // Label text style
  static get labelLargeOrange700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.orange700,
        fontSize: 13.fSize,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 13.fSize,
      );
  static get labelLargePrimary13 => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 13.fSize,
      );
  static get labelLargePrimaryContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 13.fSize,
      );
  // Title text style
  static get titleLargeInter => theme.textTheme.titleLarge!.inter.copyWith(
        fontSize: 22.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeRegular => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleLarge_1 => theme.textTheme.titleLarge!;
  static get titleMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMedium16_1 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMedium17 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 17.fSize,
      );
  static get titleMediumErrorContainer => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumErrorContainer17 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 17.fSize,
      );
  static get titleMediumGray20003 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray20003,
      );
  static get titleMediumOrange700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.orange700,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOrange700SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.orange700,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold17 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold_1 => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleMediumWhiteA70016 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 16.fSize,
      );
  static get titleSmall15 => theme.textTheme.titleSmall!.copyWith(
        fontSize: 15.fSize,
      );
  static get titleSmall15_1 => theme.textTheme.titleSmall!.copyWith(
        fontSize: 15.fSize,
      );
  static get titleSmallOrange700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.orange700,
      );
  static get titleSmallWhiteA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 15.fSize,
      );
  static get titleSmallWhiteA70015 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 15.fSize,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get nunito {
    return copyWith(
      fontFamily: 'Nunito',
    );
  }

  TextStyle get quicksand {
    return copyWith(
      fontFamily: 'Quicksand',
    );
  }
}
