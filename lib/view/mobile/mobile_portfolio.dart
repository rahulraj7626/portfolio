import 'package:flutter/material.dart';

import '../../utils/text_styles.dart';

class PortfolioMobile extends StatelessWidget {
  final double height;
  const PortfolioMobile({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: const EdgeInsets.all(10),
      child: Column(children: [
        TextTypes.headText("My portfolio"),
        const Divider(
          color: Colors.yellow,
        ),
        const SizedBox(
          height: 50,
        ),
        TextTypes.subTitleText("HI portfolio"),
        TextTypes.headText("IAM RAHUL RAJ EK"),
        const SizedBox(
          height: 50,
        ),
      ]),
    );
  }
}
