import 'package:social_app/constants/constants.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.ThemeColor[AppColors.colorWhite],
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(),
    textTheme: TextTheme(
      button: TextStyle(
        fontFamily: FontConst.NunitoSansRegular,
        color: AppColors.ThemeColor[AppColors.ColorPrimary],
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w800,
        fontSize: 20,
      ),
      headline1: TextStyle(
        fontFamily: FontConst.NunitoSansRegular,
        color: AppColors.ThemeColor[AppColors.HeaderTextColor],
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w800,
        fontSize: 20,
      ),
      headline2: TextStyle(
        fontFamily: FontConst.NunitoSansRegular,
        color: AppColors.ThemeColor[AppColors.ColorCommon],
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w800,
        fontSize: 20,
      ),
      headline3: TextStyle(
        fontFamily: FontConst.NunitoSansRegular,
        color: AppColors.ThemeColor[AppColors.HeaderTextColor],
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w800,
        fontSize: 16,
      ),
      subtitle1: TextStyle(
        fontFamily: FontConst.NunitoSansRegular,
        color: AppColors.ThemeColor[AppColors.colorWhite],
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w800,
        fontSize: 14,
      ),
      subtitle2: TextStyle(
        fontFamily: FontConst.NunitoSansRegular,
        color: AppColors.ThemeColor[AppColors.ColorPrimary],
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w600,
        fontSize: 10,
      ),
      headline4: TextStyle(
        fontFamily: FontConst.NunitoSansRegular,
        color: AppColors.ThemeColor[AppColors.ColorPrimary],
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        fontSize: 12,
      ),
      headline5: TextStyle(
        fontFamily: FontConst.NunitoSansRegular,
        color: AppColors.ThemeColor[AppColors.colorWhite],
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w600,
        fontSize: 10,
      ),
      headline6: TextStyle(
        fontFamily: FontConst.NunitoSansRegular,
        color: AppColors.ThemeColor[AppColors.colorWhite],
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w600,
        fontSize: 12,
      ),
      bodyText1: TextStyle(
        fontFamily: FontConst.NunitoSansRegular,
        color: AppColors.ThemeColor[AppColors.colorWhite],
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        fontSize: 16,
      ),
      headlineLarge: TextStyle(
        fontFamily: FontConst.NunitoSansRegular,
        color: AppColors.ThemeColor[AppColors.colorWhite],
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w800,
        fontSize: 24,
      ),
    ),
    scrollbarTheme: const ScrollbarThemeData().copyWith(
      thumbColor: MaterialStateProperty.all(AppColors.ThemeColor[AppColors.ColorGrayBorder]),
    ),
    dividerTheme: const DividerThemeData(
      space: 30,
      thickness: 4,
    ),
    snackBarTheme: SnackBarThemeData(
      contentTextStyle: TextStyle(
        color: AppColors.ThemeColor[AppColors.colorWhite],
      ),
      actionTextColor: AppColors.ThemeColor[AppColors.colorWhite],
      backgroundColor:  AppColors.ThemeColor[AppColors.ColorCommon],
    ),
    appBarTheme: AppBarTheme(
      color: AppColors.ThemeColor[AppColors.colorWhite],
      foregroundColor: AppColors.ThemeColor[AppColors.ColorPrimary],
      iconTheme: IconThemeData(
        color: AppColors.ThemeColor[AppColors.ColorPrimary],
      ),
    ),
    iconTheme: IconThemeData(
      color: AppColors.ThemeColor[AppColors.ColorPrimary],
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: AppColors.ThemeColor[AppColors.ColorCommon],
        onPrimary: AppColors.ThemeColor[AppColors.colorWhite],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        padding: const EdgeInsets.only(
          top: 10,
          bottom: 10,
        ),
      ),
    ),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.all(AppColors.ThemeColor[AppColors.ColorCommon]),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.ThemeColor[AppColors.ColorCommon],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(7),
        side: BorderSide.none,
      ),
      splashColor: AppColors.ThemeColor[AppColors.ColorCommon]?.withOpacity(0.9),
      textTheme: ButtonTextTheme.primary,
    ),
  );
}
