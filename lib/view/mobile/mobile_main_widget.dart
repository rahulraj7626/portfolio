import 'package:flutter/material.dart';
import 'package:portfolio/implemetation.dart/uri_launcher.dart';
import '../../constants/color_constants.dart';
import '../../model/portfolio_model.dart';
import '../../utils/text_styles.dart';
import '../common_widget/icon_card_widget.dart';

class MobileMainWidget extends StatelessWidget {
  final double height;
  final PortFolioModel data;
  MobileMainWidget({Key? key, required this.height, required this.data})
      : super(key: key);

  final LauncherUtils _launch = LauncherUtils();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: const EdgeInsets.all(10),
      child: Column(children: [
        const Spacer(),
        const CircleAvatar(
          radius: 75, // Image radius
          backgroundImage: AssetImage("assets/images/dp.jpeg"),
        ),
        const Spacer(),
        TextTypes.largeP("HI THERE !"),
        TextTypes.xLargP("I 'am  ${data.name}"),
        TextTypes.mediamP(data.about),
        const Spacer(),
        wrapWidget(),
        const Spacer(),
      ]),
    );
  }

  Widget wrapWidget() {
    return Wrap(spacing: 14, children: [
      CardWidget(
          icon: data.iconsList.github,
          size: 30,
          onpressed: () {
            _launch.launchWeb(data.links.github);
          }),
      CardWidget(
        icon: data.iconsList.linked,
        size: 30,
        onpressed: () {
          _launch.launchWeb(data.links.linked);
        },
      ),
      CardWidget(
        icon: data.iconsList.stack,
        size: 30,
        onpressed: () {
          _launch.launchWeb(data.links.stack);
        },
      ),
      CardWidget(
        icon: data.iconsList.watsapp,
        size: 30,
        onpressed: () {
          _launch.launchWatsapp(data.links.watsapp);
        },
      ),
    ]);
  }
}
