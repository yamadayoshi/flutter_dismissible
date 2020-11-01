import 'package:flutter/cupertino.dart';

class ListItem extends ChangeNotifier {
  List<String> list = [];

  void add() {
    list.add('myValue ${list.length}');
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
