import 'dart:math';

import 'package:dismissible/components/list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class ListViewDismissible extends StatefulWidget {
  @override
  _ListViewDismissibleState createState() => _ListViewDismissibleState();
}

class _ListViewDismissibleState extends State<ListViewDismissible> {
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
        body: Provider.of<ListItem>(context, listen: true).getLength() == 0
            ? Center(child: Text('No items'))
            : ListView.builder(
                itemCount:
                    Provider.of<ListItem>(context, listen: true).getLength(),
                itemBuilder: (context, index) => Column(
                  children: [
                    Dismissible(
                      key: Key(
                          (index + Random.secure().nextInt(8888)).toString()),
                      direction: DismissDirection.endToStart,
                      background: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          color: Color(0xFFFFE6E6),
                        ),
                        child: Row(
                          children: [
                            Spacer(),
                            SvgPicture.asset("assets/icons/Trash.svg"),
                          ],
                        ),
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
                                    color: Color(0xFFF5F0FF),
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                      image: NetworkImage(Provider.of<ListItem>(
                                              context,
                                              listen: true)
                                          .list[index]
                                          .urlImage),
                                    ),
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
                              Text(Provider.of<ListItem>(context, listen: true)
                                  .list[index]
                                  .name),
                              Text.rich(
                                TextSpan(
                                  text: Provider.of<ListItem>(context,
                                          listen: true)
                                      .list[index]
                                      .description,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      onDismissed: (direction) {
                        Provider.of<ListItem>(context, listen: false)
                            .deleteAt(index);

                        print(
                            'Left: ${Provider.of<ListItem>(context, listen: false).getLength()}');
                      },
                    )
                  ],
                ),
              ),
      ),
    );
  }
}
