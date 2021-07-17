import 'package:flutter_application_1/models/catalogue.dart';
import 'package:flutter_application_1/store/store.dart';
import 'package:velocity_x/velocity_x.dart';

class CartModel {
  //catalogue field
  late CatalogModel _catalog;

  //collection of IDs-store IDs of each item
  final List<int> _itemIDs = [];

  //get catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  //get item in the cart
  List<Item> get items => _itemIDs.map((id) => _catalog.getById(id)).toList();

  //get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  //Add item
  void add(Item item) {
    _itemIDs.add(item.id);
  }

  //Remove Item
  void remove(Item item) {
    _itemIDs.remove(item.id);
  }
}

class AddMutation extends VxMutation<MyStore> {
  late final Item item;
  AddMutation(this.item);
  @override
  perform() {
    store.cart._itemIDs.add(item.id);
  }
}
