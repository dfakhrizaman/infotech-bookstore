import 'package:flutter/material.dart';
import 'package:infotech_bookstore/controllers/home_controller.dart';

class GridItem extends StatelessWidget {
  const GridItem({
    Key? key,
    required this.bookController,
    required this.index,
  }) : super(key: key);

  final HomeController bookController;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Theme.of(context).colorScheme.secondary,
        onTap: () {
          bottomDetailsSheet();
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: Image.network(
                    bookController.getImage(index),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 8),
                      Text(
                        bookController.getTitle(index),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        bookController.getPrice(index),
                        overflow: TextOverflow.visible,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget bottomDetailsSheet() {
  return DraggableScrollableSheet(
    initialChildSize: .2,
    minChildSize: .1,
    maxChildSize: .6,
    builder: (BuildContext context, ScrollController scrollController) {
      return Container(
        color: Colors.lightGreen[100],
        child: ListView(
          controller: scrollController,
          children: const [
            ListTile(
              title: Text(
                "NAME",
              ),
              subtitle: Text(
                'DDD',
              ),
            ),
            ListTile(
              title: Text(
                "NAME",
              ),
              subtitle: Text(
                'DDD',
              ),
            ),
            ListTile(
              title: Text(
                "NAME",
              ),
              subtitle: Text(
                'DDD',
              ),
            ),
            ListTile(
              title: Text(
                "NAME",
              ),
              subtitle: Text(
                'DDD',
              ),
            ),
            ListTile(
              title: Text(
                "NAME",
              ),
              subtitle: Text(
                'DDD',
              ),
            ),
          ],
        ),
      );
    },
  );
}
