// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import './app_brand_colors.dart';
import './app_colors.dart';
import './drawer_theme_data.dart';
import './elevated_button_theme_data.dart';
import './icon_theme_data.dart';
import './primary_icon_theme.dart';
import './squircle_border.dart';
import './text_theme.dart';
import './theme_defaults.dart';
import './typography.dart';

ThemeData appLightThemeData = ThemeData(
  applyElevationOverlayColor: true,
  extensions: <ThemeExtension<AppBrandColors>>[
    AppBrandColors(
      brandOneLight: brandOneLightPrimary,
      brandOneDark: brandOneDarkPrimary,
      brandTwoLight: brandTwoLightPrimary,
      brandTwoDark: brandTwoDarkPrimary,
      brandThreeLight: brandThreeLightPrimary,
      brandThreeDark: brandThreeDarkPrimary,
    )
  ],
  useMaterial3: true,
  colorScheme: appLightColorScheme,
  brightness: Brightness.light,
  primaryColor: appMaterialLightPrimaryColor,
  focusColor: appMaterialLightFocusColor,
  hoverColor: appMaterialLightHoverColor,
  shadowColor: appMaterialLightShadowColor,
  canvasColor: appMaterialLightCanvasColor,
  scaffoldBackgroundColor: appMaterialLightScaffoldBackgroundColor,
  bottomAppBarColor: appMaterialLightBottomAppBarColor,
  cardColor: appMaterialLightCardColor,
  dividerColor: appMaterialLightDividerColor,
  highlightColor: appMaterialLightHighLightColor,
  splashColor: appMaterialLightSplashColor,
  selectedRowColor: appMaterialLightSelectedRowColor,
  unselectedWidgetColor: appMaterialLightUnselectedWidgetColor,
  disabledColor: appMaterialLightDisabledColor,
  secondaryHeaderColor: appMaterialLightSecondaryHeaderColor,
  backgroundColor: appMaterialLightBackgroundColor,
  dialogBackgroundColor: appMaterialLightDialogBackgroundColor,
  indicatorColor: appMaterialLightIndicatorColor,
  hintColor: appMaterialLightHintColor,
  errorColor: appMaterialLightErrorColor,
  toggleableActiveColor: appMaterialLightToggleableActiveColor,
  typography: appTypography,
  textTheme: appMateriaLightTextTheme,
  primaryTextTheme: appMaterialLightPrimaryTextTheme,
  drawerTheme: appMaterialLightDrawerThemeData.copyWith(
    // we override the MD3 shape def here with my own design tweak
    shape: const SquircleBorder(
      radius: BorderRadius.only(
        topRight: Radius.circular(16),
        bottomRight: Radius.circular(16),
      ),
    ),
  ),
  elevatedButtonTheme: appMaterialLightElevatedButtonThemeData,
  iconTheme: appMaterialLightIconThemeData,
  primaryIconTheme: appMaterialLightPrimaryIconTheme,
);

ThemeData appDarkThemeData = ThemeData(
  applyElevationOverlayColor: true,
  extensions: <ThemeExtension<AppBrandColors>>[
    AppBrandColors(
      brandOneLight: brandOneLightPrimary,
      brandOneDark: brandOneDarkPrimary,
      brandTwoLight: brandTwoLightPrimary,
      brandTwoDark: brandTwoDarkPrimary,
      brandThreeLight: brandThreeLightPrimary,
      brandThreeDark: brandThreeDarkPrimary,
    )
  ],
  useMaterial3: true,
  colorScheme: appDarkColorScheme,
  brightness: Brightness.dark,
  primaryColor: appMaterialDarkPrimaryColor,
  focusColor: appMaterialDarkFocusColor,
  hoverColor: appMaterialDarkHoverColor,
  shadowColor: appMaterialDarkShadowColor,
  canvasColor: appMaterialDarkCanvasColor,
  scaffoldBackgroundColor: appMaterialDarkScaffoldBackgroundColor,
  bottomAppBarColor: appMaterialDarkBottomAppBarColor,
  cardColor: appMaterialDarkCardColor,
  dividerColor: appMaterialDarkDividerColor,
  highlightColor: appMaterialDarkHighLightColor,
  splashColor: appMaterialDarkSplashColor,
  selectedRowColor: appMaterialDarkSelectedRowColor,
  unselectedWidgetColor: appMaterialDarkUnselectedWidgetColor,
  disabledColor: appMaterialDarkDisabledColor,
  secondaryHeaderColor: appMaterialDarkSecondaryHeaderColor,
  backgroundColor: appMaterialDarkBackgroundColor,
  dialogBackgroundColor: appMaterialDarkDialogBackgroundColor,
  indicatorColor: appMaterialDarkIndicatorColor,
  hintColor: appMaterialDarkHintColor,
  errorColor: appMaterialDarkErrorColor,
  toggleableActiveColor: appMaterialDarkToggleableActiveColor,
  typography: appTypography,
  textTheme: appMaterialDarkTextTheme,
  primaryTextTheme: appMaterialDarkPrimaryTextTheme,
  drawerTheme: appMaterialDarkDrawerThemeData.copyWith(
    // we override the MD3 shape def here with my own design tweak
    shape: const SquircleBorder(
      radius: BorderRadius.only(
        topRight: Radius.circular(16),
        bottomRight: Radius.circular(16),
      ),
    ),
  ),
  elevatedButtonTheme: appMaterialDarkElevatedButtonThemeData,
  iconTheme: appMaterialDarkIconThemeData,
  primaryIconTheme: appMaterialDarkPrimaryIconTheme,
);
