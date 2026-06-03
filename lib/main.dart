import 'package:catalog_application/catalog_home_page.dart';
import 'package:catalog_application/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      initialRoute: "/",
       routes: {
        "/" :(context) => LoginPage(),
        "/home":(context) => CatalogHomePage(),
       },
    );
  }
}