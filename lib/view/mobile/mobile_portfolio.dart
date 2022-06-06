import 'package:flutter/material.dart';
import 'package:portfolio/model/work_model.dart';
import '../../model/profile_model.dart';
import '../../utils/text_styles.dart';
import '../common_widget/popup.dart';

class PortfolioMobile extends StatefulWidget {
  final double height;
  const PortfolioMobile({Key? key, required this.height}) : super(key: key);

  @override
  State<PortfolioMobile> createState() => _PortfolioMobileState();
}

class _PortfolioMobileState extends State<PortfolioMobile> {
  WorksModel workData = WorksModel.fromJson(works);
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
        wrp(),
        const SizedBox(
          height: 50,
        ),
      ]),
    );
  }

  Widget wrp() {
    return Wrap(
        spacing: 15,
        runSpacing: 15,
        children: List.generate(workData.works.length, (index) {
          return GestureDetector(
            onTap: () {
              PopupWidget().scaleDialog(
                  context,
                  workData.works[index].title,
                  workData.works[index].img,
                  workData.works[index].details,
                  workData.works[index].description,
                  workData.works[index].linkText,
                  workData.works[index].linkIcon);
            },
            child: card(workData.works[index].img, workData.works[index].link,
                workData.works[index].title),
          );
        }));
  }

  Widget card(icon, link, title) {
    return Card(
      color: Colors.white30,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Container(
        height: 160,
        width: 160,
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              icon,
              height: 70,
              fit: BoxFit.contain,
            ),
            TextTypes.mediamWP(title, true)
          ],
        ),
      ),
    );
  }
}
