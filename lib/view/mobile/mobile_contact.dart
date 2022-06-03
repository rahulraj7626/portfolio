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
        contactItem(Icons.message, "rahulraj7626@gmail.com"),
        contactItem(Icons.call, "+91 9809307626"),
        contactItem(Icons.location_pin, "Malappuram, Kerala"),
        contactItem(Icons.stacked_bar_chart, "+91 9809307626"),
        const SizedBox(
          height: 50,
        ),
      ]),
    );
  }
}

Widget contactItem(icon, txt2) {
  return Row(
    children: [
      Icon(
        icon,
        color: Colors.yellow,
      ),
      TextTypes.normalText(txt2),
    ],
  );
}
