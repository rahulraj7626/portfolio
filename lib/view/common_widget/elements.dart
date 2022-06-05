import 'package:flutter/material.dart';
import 'package:portfolio/constants/color_constants.dart';

import '../../utils/text_styles.dart';

Widget about(txt1, txt2) {
  return Row(
    children: [
      Expanded(flex: 3, child: TextTypes.mediamP(txt1)),
      Expanded(flex: 1, child: TextTypes.mediamP(":")),
      Expanded(flex: 6, child: TextTypes.mediamP(txt2)),
    ],
  );
}

Widget downloadContainer() {
  return Container(
    alignment: Alignment.center,
    width: 200,
    padding: const EdgeInsets.all(4),
    decoration: BoxDecoration(
        color: CColors.grey, borderRadius: BorderRadius.circular(30)),
    child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      TextTypes.mediamP("Download CV"),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          Icons.download,
          color: CColors.white,
          size: 28,
        ),
      )
    ]),
  );
}
