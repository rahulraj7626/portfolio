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
    color: Colors.white30,
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
