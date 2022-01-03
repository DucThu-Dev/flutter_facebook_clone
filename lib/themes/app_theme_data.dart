import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/resources/color_resource.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData themeData() {
  return ThemeData(
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: <TargetPlatform, PageTransitionsBuilder>{
        TargetPlatform.android: ZoomPageTransitionsBuilder(),
      },
    ),
    textTheme: _textTheme,
    primaryColor: ColorResource.white,
    appBarTheme: AppBarTheme(
      elevation: 0,
      color: ColorResource.white,
      titleTextStyle: _textTheme.headline3,
    ),
    highlightColor: Colors.transparent,
    elevatedButtonTheme: _elevatedButtonThemeData,
  );
}

const _light = FontWeight.w300;
// static const _regular = FontWeight.w400;
const _medium = FontWeight.w500;
const _semiBold = FontWeight.w600;
const _bold = FontWeight.w700;

TextTheme _textTheme = TextTheme(
  headline1: GoogleFonts.sourceSansPro(fontWeight: _bold, fontSize: 40.0),
  headline2: GoogleFonts.sourceSansPro(
      fontWeight: _bold, fontSize: 32.0, color: const Color(0xFF3D3D3D)),
  headline3: GoogleFonts.sourceSansPro(
      fontWeight: _semiBold,
      fontSize: 24.0,
      color: ColorResource.black28),
  headline4: GoogleFonts.sourceSansPro(
      fontWeight: _medium, fontSize: 20.0, color: ColorResource.black28),
  headline5: GoogleFonts.sourceSansPro(
      fontWeight: _medium, fontSize: 16.0, color: ColorResource.black28),
  headline6: GoogleFonts.sourceSansPro(
      fontWeight: _bold, fontSize: 16.0, color: ColorResource.black28),
  subtitle1: GoogleFonts.sourceSansPro(
      fontWeight: _medium, fontSize: 16.0, color: ColorResource.black28),
  subtitle2: GoogleFonts.sourceSansPro(
      fontWeight: _medium, fontSize: 14.0, color: ColorResource.black28),
  caption: GoogleFonts.sourceSansPro(
      fontWeight: _semiBold,
      fontSize: 16.0,
      color: ColorResource.black28),
  bodyText1: GoogleFonts.sourceSansPro(
      fontWeight: _light, fontSize: 18.0, color: ColorResource.black28),
  bodyText2: GoogleFonts.sourceSansPro(
      fontWeight: _light, fontSize: 16.0, color: ColorResource.black28),
  button: GoogleFonts.sourceSansPro(
      fontWeight: _semiBold,
      fontSize: 18.0,
      color: ColorResource.black28),
  overline: GoogleFonts.sourceSansPro(
      fontWeight: _medium, fontSize: 12.0, color: ColorResource.black28),
);

final ElevatedButtonThemeData _elevatedButtonThemeData =
    ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    textStyle: _textTheme.headline5,
    primary: ColorResource.green,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  ),
);
