import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_application_1/models/catalogue.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    loadData() async {
      await Future.delayed(Duration(seconds: 2));
      var catalogJson =
          await rootBundle.loadString("assets/files/catalogue.json");
      print(catalogJson);
      var decodedData = jsonDecode(catalogJson);
      print(decodedData);
      var productsData = decodedData["products"];
      CatalogModel.items = List.from(productsData)
          .map<Item>((item) => Item.fromMap(item))
          .toList();
      setState(() {});
    }

    @override
    void initState() {
      super.initState();
      loadData();
    }

    return Container(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
            ? ListView.builder(
                itemCount: CatalogModel.items.length,
                itemBuilder: (context, index) {
                  return ItemWidget(
                    item: CatalogModel.items[index],
                  );
                })
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
    ));
  }
}
//Day-14 Attended the QnA session