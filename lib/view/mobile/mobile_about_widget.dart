import 'package:flutter/material.dart';

import '../../model/portfolio_model.dart';
import '../../utils/text_styles.dart';
import '../common_widget/elements.dart';

class MobileAbout extends StatelessWidget {
  final double height;
  final PortFolioModel data;
  const MobileAbout({Key? key, required this.height, required this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: const EdgeInsets.all(10),
      child: Column(children: [
        TextTypes.headText("ABOUT ME"),
        const Divider(
          color: Colors.yellow,
        ),
        about("Nmae", "Rahul Raj EK"),
        about("Date of birth", "18-07-1995"),
        about("Qualification", "Master's of \nComputer Applications"),
        about("Post", "Flutter Developer"),
        about("Languages known", "Malayalam,\nEnglish"),
        const SizedBox(
          height: 50,
        ),
        downloadContainer(),
        card(),
      ]),
    );
  }
}

Widget card() {
  return Wrap(children: [
    Card(
      color: Colors.white30,
      child: SizedBox(
        width: 150,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextTypes.headText("2+"),
              TextTypes.subTitleText("Years of Experience"),
            ]),
      ),
    ),
    Card(
      color: Colors.white30,
      child: SizedBox(
        width: 150,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextTypes.headText("10+"),
              TextTypes.subTitleText("Projects"),
            ]),
      ),
    ),
  ]);
}
