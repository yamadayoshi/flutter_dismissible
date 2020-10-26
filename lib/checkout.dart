import 'package:dismissible/components/listview_dismissible.dart';
import 'package:flutter/material.dart';

class Checkout extends StatefulWidget {
  List list;

  Checkout(this.list);

  @override
  CcheckoutState createState() => CcheckoutState();
}

class CcheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return ListViewDismissible(widget.list);
  }
}
