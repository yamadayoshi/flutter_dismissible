import 'package:dismissible/checkout.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dismissible/components/list_item.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Column(
          children: [
            Text(
              'Dismissible',
              style: TextStyle(color: Colors.black),
            ),
            Text('Count items', style: Theme.of(context).textTheme.caption),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            FlatButton(
              onPressed: addList,
              child: Text(
                'Add item',
                style: TextStyle(backgroundColor: Colors.tealAccent),
              ),
            ),
            FlatButton(onPressed: checkout, child: Text('Checkout'))
          ],
        ),
      ),
    );
  }

  void addList() {
    Provider.of<ListItem>(context, listen: false).add();
    print(Provider.of<ListItem>(context, listen: false).getLength());
  }

  checkout() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Checkout()));
  }
}
