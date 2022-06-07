import 'package:flutter/material.dart';
import 'package:portfolio/constants/color_constants.dart';

import '../../model/portfolio_model.dart';
import '../../utils/text_styles.dart';
import '../common_widget/elements.dart';
import '../common_widget/plus_card_widget.dart';

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
        TextTypes.xLargP("About me"),
        Divider(color: CColors.yellow),
        const Spacer(),
        about("Name", data.name),
        about("Date of birth", data.dob),
        about("Qualification", data.highestQualification),
        about("Designation", data.designation),
        about("Languages known", data.languages),
        const Spacer(),
        downloadContainer(context),
        const Spacer(),
        wrapWidget(),
        const Spacer(),
      ]),
    );
  }

  Widget wrapWidget() {
    return Wrap(runSpacing: 12, spacing: 12, children: [
      PlusCardWidget(
        content: "Experiance",
        year: data.experiance,
      ),
      PlusCardWidget(
        content: "Projects",
        year: data.projects,
      ),
    ]);
  }
}
