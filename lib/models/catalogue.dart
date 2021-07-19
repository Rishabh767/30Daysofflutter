import 'package:flutter/material.dart';

class CatalogModel {
  static late List<Item> items;

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
