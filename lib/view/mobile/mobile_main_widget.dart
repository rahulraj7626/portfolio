import 'package:flutter/material.dart';

import '../../utils/text_styles.dart';

class MobileMainWidget extends StatelessWidget {
  final double height;
  const MobileMainWidget({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: const EdgeInsets.all(10),
      child: Column(children: [
        const SizedBox(
          height: 50,
        ),
        const CircleAvatar(
          backgroundColor: Colors.white30,
          radius: 70,
          child: Icon(
            Icons.person,
            color: Colors.blue,
            size: 100,
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        TextTypes.subTitleText("HI THERE !"),
        TextTypes.headText("IAM RAHUL RAJ EK"),
        TextTypes.descriptionText(
            "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available."),
        const SizedBox(
          height: 50,
        ),
      ]),
    );
  }
}
