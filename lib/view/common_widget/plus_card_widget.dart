import 'package:flutter/material.dart';
import 'package:portfolio/constants/color_constants.dart';

import '../../utils/text_styles.dart';

class PlusCardWidget extends StatelessWidget {
  final String year;
  final String content;
  const PlusCardWidget({Key? key, required this.year, required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: CColors.grey,
      child: SizedBox(
        width: 130,
        height: 130,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextTypes.xLargP(year),
              TextTypes.mediamP(content),
            ]),
      ),
    );
  }
}
