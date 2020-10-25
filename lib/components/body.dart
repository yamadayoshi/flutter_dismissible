import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  List<String> list = ['Code', 'Hard', 'Learn', 'Knowledge'];

  @override
  Widget build(BuildContext context) {
    print('Total: ${list.length}');

    return ListView.builder(
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
              print('Left: ${list.toString()}');
            },
          )
        ],
      ),
    );
  }
}
