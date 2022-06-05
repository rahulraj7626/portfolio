import 'package:flutter/material.dart';

import '../../model/portfolio_model.dart';
import '../../utils/text_styles.dart';
import '../common_widget/popup.dart';

class PortfolioMobile extends StatelessWidget {
  final double height;
  final PortFolioModel data;
  const PortfolioMobile({Key? key, required this.height, required this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(children: [
        TextTypes.largeP("My portfolio"),
        const Divider(
          color: Colors.yellow,
        ),
        const SizedBox(
          height: 50,
        ),
        GestureDetector(
            onTap: () {
              PopupWidget().scaleDialog(context);
            },
            child: wrp()),
        const SizedBox(
          height: 50,
        ),
      ]),
    );
  }
}

Widget wrp() {
  return Wrap(spacing: 20, runSpacing: 20, children: [
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
    card(
      "assets/icons/git.png",
      "https://github.com/rahulraj7626",
    ),
    card(
      "assets/icons/link.png",
      "https://www.linkedin.com/in/rahulraj7626",
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
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            icon,
            height: 70,
            fit: BoxFit.contain,
          ),
          TextTypes.mediamP("Radio Talky")
        ],
      ),
    ),
  );
}
