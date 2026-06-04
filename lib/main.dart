import 'package:catalog_application/pages/catalog_home_page.dart';
import 'package:catalog_application/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'utils/routs.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.lato().fontFamily,
      ),
      
      darkTheme: ThemeData(
       primarySwatch: Colors.deepPurple, 
      ),
      initialRoute: "/login",
       routes: {
        Routes.loginRoute:(context) => LoginPage(),
        Routes.homeRoute :(context) => CatalogHomePage(),
       },
    );
  }
}