class Item {
  String id;
  String name;
  int quantity;

  Item(this.id, this.name, this.quantity);

  @override
  String toString() {
    return 'ID: $id, Name: $name, Quantity: $quantity';
  }
}
