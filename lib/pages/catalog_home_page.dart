import 'package:catalog_application/widgets/drawer.dart';
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
        title: Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Text(
            'Catalog App',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
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
      drawer: MyDrawer(),
    );
  }
}