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
    final int days = 30;

    loadData() async {
      var catalogJson =
          await rootBundle.loadString("assets/files/catalogue.json");
      print(catalogJson);
      var decodedData = jsonDecode(catalogJson);
      print(decodedData);
      var productsData = decodedData["products"];
      print(productsData);
    }

    @override
    void initState() {
      super.initState();
      loadData();
    }

    final dummyList = List.generate(50, (index) => catalogModel.items[0]);
    return Container(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
            itemCount: dummyList.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                item: dummyList[index],
              );
            }),
      ),
      drawer: MyDrawer(),
    ));
  }
}
//Day-14 Attended the QnA session