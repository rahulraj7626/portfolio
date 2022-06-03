import 'package:flutter/material.dart';

import '../../utils/text_styles.dart';

class ContactMobile extends StatelessWidget {
  final double height;
  const ContactMobile({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: const EdgeInsets.all(10),
      child: Column(children: [
        TextTypes.headText("Contact me"),
        const Divider(
          color: Colors.yellow,
        ),
        const SizedBox(
          height: 50,
        ),
        contactItem(Icons.message, "rahulraj7626@gmail.com", true),
        contactItem(Icons.call, "+91 9809307626", true),
        contactItem(Icons.location_pin, "Malappuram, Kerala", true),
        contactItem(
            "assets/icons/git.png", "https://github.com/rahulraj7626", false),
        contactItem("assets/icons/link.png",
            "https://www.linkedin.com/in/rahulraj7626", false),
        contactItem("assets/icons/stack.png",
            "https://stackoverflow.com/users/15011702", false),
        contactItem(
            "assets/icons/wats.png", "https://wa.me/+919809307626", false),
        const SizedBox(
          height: 50,
        ),
      ]),
    );
  }
}

Widget contactItem(icon, txt2, isIcon) {
  return Row(
    children: [
      isIcon == true
          ? Icon(
              icon,
              color: Colors.yellow,
            )
          : Image.asset(
              icon,
              height: 20,
            ),
      Padding(
          padding: const EdgeInsets.only(left: 5),
          child: TextTypes.normalText(txt2)),
    ],
  );
}
