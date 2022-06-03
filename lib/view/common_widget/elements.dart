import 'package:flutter/material.dart';

import '../../utils/text_styles.dart';

Widget about(txt1, txt2) {
  return Row(
    children: [
      Expanded(flex: 3, child: TextTypes.normalText(txt1)),
      Expanded(flex: 1, child: TextTypes.normalText(":")),
      Expanded(flex: 6, child: TextTypes.normalText(txt2)),
    ],
  );
}

Widget downloadContainer() {
  return Container(
    alignment: Alignment.center,
    width: 200,
    margin: const EdgeInsets.all(8),
    padding: const EdgeInsets.all(8),
    decoration: BoxDecoration(
        color: Colors.white38, borderRadius: BorderRadius.circular(30)),
    child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      TextTypes.normalText("Download CV"),
      const Padding(
        padding: EdgeInsets.all(8.0),
        child: Icon(
          Icons.download,
          color: Colors.white,
          size: 28,
        ),
      )
    ]),
  );
}
