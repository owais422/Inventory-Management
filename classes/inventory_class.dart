import 'item_class.dart';

class Inventory {
  List<Item> items = [];

  void addItem(String id, String name, int quantity) {
    items.add(Item(id, name, quantity));
    print('Item added: $name');
  }

  void removeItem(String id) {
    items.removeWhere((item) => item.id == id);
    print('Item removed.');
  }

  void viewItems() {
    if (items.isEmpty) {
      print('No items in inventory.');
    } else {
      for (var item in items) {
        print(item);
      }
    }
  }
}
