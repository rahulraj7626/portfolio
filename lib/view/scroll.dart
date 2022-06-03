import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class Scroll extends StatefulWidget {
  const Scroll({Key? key}) : super(key: key);

  @override
  State<Scroll> createState() => _ScrollState();
}

class _ScrollState extends State<Scroll> {
  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();
  int ind = 0;
  @override
  void initState() {
    itemPositionsListener.itemPositions.addListener(() {
      final indices = itemPositionsListener.itemPositions.value
          .where((element) {
            final isTop = element.itemLeadingEdge >= 0;

            return isTop;
          })
          .map((e) => e.index)
          .toList();
      if (indices.isNotEmpty) {
        print(indices);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          IconButton(
              onPressed: () {
                setState(() {
                  ind += 1;
                });
                itemScrollController.scrollTo(
                    index: ind,
                    duration: Duration(seconds: 2),
                    curve: Curves.easeInOutCubic);
              },
              icon: Icon(Icons.next_plan)),
          IconButton(
              onPressed: () {
                setState(() {
                  ind -= 1;
                });
                itemScrollController.scrollTo(
                    index: ind,
                    duration: Duration(seconds: 2),
                    curve: Curves.easeInOutCubic);
              },
              icon: Icon(Icons.next_plan)),
          Expanded(
            child: ScrollablePositionedList.builder(
                itemCount: 5,
                itemScrollController: itemScrollController,
                itemPositionsListener: itemPositionsListener,
                itemBuilder: ((context, index) {
                  return Card(
                    color: Colors.blue,
                    child: Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height,
                      width: 150,
                      margin: EdgeInsets.all(10),
                      child: Text((index + 1).toString()),
                    ),
                  );
                })),
          ),
        ],
      ),
    );
  }
}
