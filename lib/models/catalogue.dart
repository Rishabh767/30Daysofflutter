import 'package:flutter/material.dart';

class CatalogModel {
  static final catModel = CatalogModel._internal();

  CatalogModel._internal();

  factory CatalogModel() => catModel;
  //made singleton

  static List<Item> items = [
    Item(
        id: 1,
        name: "IPhone",
        desc:
            "Dual-camera system with 12MP Ultra Wide cameras; Night mode, Portrait mode, and 4K video up to 60fps",
        price: 599,
        color: "FSFS",
        image:
            "https://cdn.shopify.com/s/files/1/0281/2805/1260/products/IP6SG_6c88e105-6510-41c8-b8d8-3bb93dab4f13_1024x1024.jpg?v=1574499560")
  ];

  get get => null;
  //get item by id
  Item getById(int id) =>
      items.firstWhere((element) => element.id == id, orElse: null);
  //get item by position
  Item getByPosition(int pos) => items[pos];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
        id: map["id"],
        color: map["color"],
        desc: map["desc"],
        image: map["image"],
        name: map["name"],
        price: map["price"]);
  }
  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "image": image,
        "price": price,
        "color": color
      };
}
