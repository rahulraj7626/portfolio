import 'package:flutter/material.dart';

import '../../constants/color_constants.dart';
import '../../model/portfolio_model.dart';
import '../../utils/text_styles.dart';

class MobileMainWidget extends StatelessWidget {
  final double height;
  final PortFolioModel data;
  const MobileMainWidget({Key? key, required this.height, required this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: const EdgeInsets.all(10),
      child: Column(children: [
        const SizedBox(
          height: 50,
        ),
        CircleAvatar(
          backgroundColor: Colors.white30,
          radius: 70,
          child: Icon(
            Icons.person,
            color: CColors.yellow,
            size: 100,
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        TextTypes.subTitleText("HI THERE !"),
        TextTypes.headText("I 'am  ${data.name}"),
        TextTypes.descriptionText(data.about),
        const SizedBox(
          height: 50,
        ),
        wrp(),
        const SizedBox(
          height: 50,
        ),
      ]),
    );
  }
}

Widget wrp() {
  return Wrap(spacing: 14, children: [
    card(
      "assets/icons/git.png",
      "https://github.com/rahulraj7626",
    ),
    card(
      "assets/icons/link.png",
      "https://www.linkedin.com/in/rahulraj7626",
    ),
    card(
      "assets/icons/stack.png",
      "https://stackoverflow.com/users/15011702",
    ),
    card(
      "assets/icons/wats.png",
      "https://wa.me/+919809307626",
    ),
  ]);
}

Widget card(icon, link) {
  return Card(
    color: CColors.grey,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
    child: Container(
      padding: const EdgeInsets.all(12.0),
      child: Image.asset(
        icon,
        height: 30,
      ),
    ),
  );
}
