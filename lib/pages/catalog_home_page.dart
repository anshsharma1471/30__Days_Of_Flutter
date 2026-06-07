
import 'package:catalog_application/models/catalog.dart';
import 'package:catalog_application/widgets/drawer.dart';
import 'package:catalog_application/widgets/item_widget.dart';
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
      body: ListView.builder(
        itemCount: CatalogModel.products.length,
        itemBuilder: (context, index) {
          return ItemWidget(
            item: CatalogModel.products[index],
          );
        },
      ),
      drawer: MyDrawer(),
    );
  }
}