import 'package:dismissible/models/item.dart';
import 'package:flutter/cupertino.dart';

class ListItem extends ChangeNotifier {
  List<Item> list = [];

  void add() {
    list.add(Item('value ${list.length}', 'description ${list.length}',
        'https://images.saymedia-content.com/.image/t_share/MTc0NDYwODk2OTg2MDgwNjE2/best-wizards-mtg.jpg'));
    notifyListeners();
  }

  void deleteAt(int index) {
    list.removeAt(index);
    notifyListeners();
  }

  int getLength() {
    return list.length;
  }
}
