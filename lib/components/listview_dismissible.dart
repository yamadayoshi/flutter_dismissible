import 'package:flutter/material.dart';

class ListViewDismissible extends StatelessWidget {
  final List list;

  ListViewDismissible(this.list);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              title: Text('Checkout'),
              expandedHeight: 200.0,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                    "https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png",
                    fit: BoxFit.cover),
              ),
            ),
          ];
        },
        body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) => Column(
            children: [
              Dismissible(
                key: Key(index.toString()),
                direction: DismissDirection.endToStart,
                background: Container(
                  decoration: BoxDecoration(color: Color(0xFFFFE6E6)),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 88.0,
                        child: AspectRatio(
                          aspectRatio: 0.95,
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              color: Color(0xFFF5F6F9),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(list[index]),
                        Text.rich(
                          TextSpan(
                            text: "R43423424",
                          ),
                        )
                      ],
                    )
                  ],
                ),
                onDismissed: (direction) {
                  list.removeAt(index);
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  List _buildList(int count) {
    List<Widget> listItems = List();

    for (int i = 0; i < count; i++) {
      listItems.add(new Padding(
          padding: new EdgeInsets.all(20.0),
          child: new Text('Item ${i.toString()}',
              style: new TextStyle(fontSize: 25.0))));
    }

    return listItems;
  }
}
