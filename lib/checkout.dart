import 'package:dismissible/components/listview_dismissible.dart';
import 'package:flutter/material.dart';

class Checkout extends StatefulWidget {
  @override
  CheckoutState createState() => CheckoutState();
}

class CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return ListViewDismissible();
  }
}
