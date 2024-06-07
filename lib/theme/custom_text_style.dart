import 'package:flutter/material.dart';
import 'package:efhamnidz/core/utils/size_utils.dart';
import 'package:efhamnidz/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeInterOnSecondaryContainer =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
        fontSize: 17.fSize,
      );
  static get bodyLargeOnError => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onError,
      );
  static get bodyLargeSFProOnSecondaryContainer =>
      theme.textTheme.bodyLarge!.sFPro.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(0.9),
        fontSize: 19.fSize,
      );
  static get bodyLargeSFProOnSecondaryContainer_1 =>
      theme.textTheme.bodyLarge!.sFPro.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(0.9),
      );
  static get bodyLargeSFProe5ffffff =>
      theme.textTheme.bodyLarge!.sFPro.copyWith(
        color: Color(0XE5FFFFFF),
      );
  static get bodyMediumRoboto => theme.textTheme.bodyMedium!.roboto.copyWith(
        fontSize: 14.fSize,
      );
  // Headline text style
  static get headlineSmallAArslanWessamBOrangeA200 =>
      theme.textTheme.headlineSmall!.aArslanWessamB.copyWith(
        color: appTheme.orangeA200,
        fontSize: 24.fSize,
      );
  static get headlineSmallGray600 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray600,
      );
  static get headlineSmallInterPrimary =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 24.fSize,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallLightblue800 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.lightBlue800,
      );
  static get headlineSmallOnSecondaryContainer =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallOnSecondaryContainer_1 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
      );
  static get headlineSmallRobotoLightblue800 =>
      theme.textTheme.headlineSmall!.roboto.copyWith(
        color: appTheme.lightBlue800,
      );
  static get headlineSmallSFProTextOnSecondaryContainer =>
      theme.textTheme.headlineSmall!.sFProText.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
        fontSize: 24.fSize,
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallSFProTextffffffff =>
      theme.textTheme.headlineSmall!.sFProText.copyWith(
        color: Color(0XFFFFFFFF),
        fontSize: 24.fSize,
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallff036bb9 => theme.textTheme.headlineSmall!.copyWith(
        color: Color(0XFF036BB9),
      );
  static get headlineSmallff0386d0 => theme.textTheme.headlineSmall!.copyWith(
        color: Color(0XFF0386D0),
      );
  static get headlineSmallff6b5e5e => theme.textTheme.headlineSmall!.copyWith(
        color: Color(0XFF6B5E5E),
      );
  // Title text style
  static get titleLargeAArslanWessamBOrangeA200 =>
      theme.textTheme.titleLarge!.aArslanWessamB.copyWith(
        color: appTheme.orangeA200,
        fontSize: 21.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeCairo => theme.textTheme.titleLarge!.cairo.copyWith(
        fontWeight: FontWeight.w300,
      );
  static get titleLargeOnSecondaryContainer =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleLargeOnSecondaryContainerRegular =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
        fontWeight: FontWeight.w400,
      );
  static get titleLargeRobotoOnSecondaryContainer =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleLargeSakkalMajallaGray70001 =>
      theme.textTheme.titleLarge!.sakkalMajalla.copyWith(
        color: appTheme.gray70001,
        fontSize: 21.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeSakkalMajallaLightblue700 =>
      theme.textTheme.titleLarge!.sakkalMajalla.copyWith(
        color: appTheme.lightBlue700,
        fontSize: 21.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumIndigo400 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.indigo400,
        fontSize: 18.fSize,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.67),
      );
  static get titleMediumRobotoOnSecondaryContainer =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumSFProe5ffffff =>
      theme.textTheme.titleMedium!.sFPro.copyWith(
        color: Color(0XE5FFFFFF),
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
}

extension on TextStyle {
  TextStyle get sFPro {
    return copyWith(
      fontFamily: 'SF Pro',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get sFProDisplay {
    return copyWith(
      fontFamily: 'SF Pro Display',
    );
  }

  TextStyle get sakkalMajalla {
    return copyWith(
      fontFamily: 'Sakkal Majalla',
    );
  }

  TextStyle get sFProText {
    return copyWith(
      fontFamily: 'SF Pro Text',
    );
  }

  TextStyle get aArslanWessamB {
    return copyWith(
      fontFamily: '(A) Arslan Wessam B',
    );
  }

  TextStyle get cairo {
    return copyWith(
      fontFamily: 'Cairo',
    );
  }
}
