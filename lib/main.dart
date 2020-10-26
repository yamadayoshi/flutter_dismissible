import 'package:dismissible/checkout.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> list = [];

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

  addList() {
    setState(() {
      list.add('value ${list.length}');
    });

    print(list.length);
  }

  checkout() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Checkout(list)));
  }
}
