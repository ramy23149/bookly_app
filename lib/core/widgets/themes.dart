import 'package:bookly_app/constans.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData? activeTheme;
Locale? localeLung;


final ThemeData lightTheme = ThemeData.light().copyWith(
  scaffoldBackgroundColor: const Color.fromARGB(255, 223, 221, 221),
  textTheme: GoogleFonts.montserratTextTheme(
    ThemeData.light().textTheme,
  ),
);

final ThemeData darkTheme = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: KColor,
  textTheme: GoogleFonts.montserratTextTheme(
    ThemeData.dark().textTheme,
  ),
);
