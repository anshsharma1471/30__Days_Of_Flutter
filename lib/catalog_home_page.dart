import 'package:flutter/material.dart';

class CatalogHomePage extends StatefulWidget {
  const CatalogHomePage({super.key});

  @override
  State<CatalogHomePage> createState() => _CatalogHomePageState();
}

class _CatalogHomePageState extends State<CatalogHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Catalog App',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        titleTextStyle: ,
      ),
      body: Center(
        child: Text(
          'this is my second app',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.grey,
          ),
          ),
      ),
      drawer: Drawer(),
    );
  }
}