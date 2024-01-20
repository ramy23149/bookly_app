import 'package:bookly_app/constans.dart';
import 'package:bookly_app/core/router.dart';


import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      

      debugShowCheckedModeBanner: false,
      
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor:  KColor,textTheme: GoogleFonts.montserratTextTheme(
          ThemeData.dark().textTheme,
        ),
      ),

    routerConfig: RouterApp.router,
    );
  }
}




