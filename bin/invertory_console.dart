import 'dart:io';
import '../classes/inventory_class.dart';

void main() {
  Inventory inventory = Inventory();

  while (true) {
    print('''
1. Add Item
2. Remove Item
3. View All Items
4. Exit
''');

    stdout.write('Choose an option: ');
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        stdout.write('Enter ID: ');
        String id = stdin.readLineSync()!;
        stdout.write('Enter Name: ');
        String name = stdin.readLineSync()!;
        stdout.write('Enter Quantity: ');
        int quantity = int.parse(stdin.readLineSync()!);
        inventory.addItem(id, name, quantity);
        break;
      case '2':
        stdout.write('Enter ID of item to remove: ');
        String id = stdin.readLineSync()!;
        inventory.removeItem(id);
        break;
      case '3':
        inventory.viewItems();
        break;
      case '4':
        print('Exiting...');
        exit(0);
      default:
        print('Invalid choice, please try again.');
    }
  }
}
