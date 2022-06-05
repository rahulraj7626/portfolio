import 'package:flutter/material.dart';

import '../../model/portfolio_model.dart';
import '../../utils/text_styles.dart';

class ContactMobile extends StatelessWidget {
  final double height;
  final PortFolioModel data;
  const ContactMobile({Key? key, required this.height, required this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: const EdgeInsets.all(10),
      child: Column(children: [
        TextTypes.largeP("Contact me"),
        const Divider(
          color: Colors.yellow,
        ),
        const SizedBox(
          height: 50,
        ),
        contactItem(
            Icons.location_pin,
            "Eranchipalathingal Kalarikkal house \nEdayur Post, Valancheri, \nPIN: 676552\nMalappuram, Kerala\nIndia",
            true),
        contactItem(Icons.call, "+91 9809307626", true),
        contactItem(Icons.email, "rahulraj7626@gmail.com", true),
        const Spacer(),
        wrp(),
        const Spacer(),
        TextTypes.mediamP("2022 \u00a9 Rahul Raj"),
      ]),
    );
  }
}

Widget contactItem(icon, txt2, isIcon) {
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: Card(
      color: Colors.white30,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            isIcon == true
                ? Icon(
                    icon,
                    size: 30,
                    color: Colors.yellow,
                  )
                : Image.asset(
                    icon,
                    height: 30,
                  ),
            Padding(
                padding: const EdgeInsets.only(left: 5),
                child: TextTypes.mediamP(txt2)),
          ],
        ),
      ),
    ),
  );
}

Widget wrp() {
  return Wrap(spacing: 14, children: [
    card(Icons.call, "https://github.com/rahulraj7626", true),
    card(Icons.email, "rahulraj7626@gmail.com", true),
    card("assets/icons/wats.png", "https://wa.me/+919809307626", false),
  ]);
}

Widget card(icon, link, isIcon) {
  return Card(
    color: Colors.white30,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
    child: Container(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          isIcon == true
              ? Icon(
                  icon,
                  size: 50,
                  color: Colors.yellow,
                )
              : Image.asset(
                  icon,
                  height: 50,
                ),
        ],
      ),
    ),
  );
}
