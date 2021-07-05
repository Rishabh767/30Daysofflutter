class catalogModel {
  static final items = [
    Item(
        id: 2222,
        name: "IPhone",
        desc: "fheofhsdof",
        price: 213,
        color: "FSFS",
        image:
            "https://cdn.shopify.com/s/files/1/0281/2805/1260/products/IP6SG_6c88e105-6510-41c8-b8d8-3bb93dab4f13_1024x1024.jpg?v=1574499560")
  ];
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
}
