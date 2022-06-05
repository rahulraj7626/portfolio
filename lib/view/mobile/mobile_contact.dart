import 'package:flutter/material.dart';
import 'package:portfolio/constants/color_constants.dart';

import '../../implemetation.dart/uri_launcher.dart';
import '../../model/portfolio_model.dart';
import '../../utils/text_styles.dart';
import '../common_widget/icon_card_widget.dart';

class ContactMobile extends StatelessWidget {
  final double height;
  final PortFolioModel data;
  ContactMobile({Key? key, required this.height, required this.data})
      : super(key: key);
  final LauncherUtils _launch = LauncherUtils();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: const EdgeInsets.all(10),
      child: Column(children: [
        TextTypes.xLargP("Contact me"),
        Divider(color: CColors.yellow),
        const Spacer(),
        contactItem(
          data.iconsList.location,
          "${data.address.address1} \n${data.address.address2} \n${data.address.address3} \n${data.address.address4}\n${data.address.address5}",
        ),
        contactItem(data.iconsList.mob, data.links.mob),
        contactItem(data.iconsList.email, data.links.email),
        const Spacer(),
        wrapWidget(),
        const Spacer(),
        TextTypes.xSmallP("2022 \u00a9 Rahul Raj"),
      ]),
    );
  }

  Widget wrapWidget() {
    return Wrap(spacing: 14, children: [
      CardWidget(
        icon: data.iconsList.mob,
        size: 40,
        onpressed: () {
          _launch.launchCall(data.links.mob);
        },
      ),
      CardWidget(
        icon: data.iconsList.email,
        size: 40,
        onpressed: () {
          _launch.launchEmail(data.links.stack);
        },
      ),
      CardWidget(
        icon: data.iconsList.watsapp,
        size: 40,
        onpressed: () {
          _launch.launchWatsapp(data.links.watsapp);
        },
      ),
    ]);
  }

  Widget contactItem(icon, txt2) {
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
              Image.asset(
                icon,
                height: 25,
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
}
