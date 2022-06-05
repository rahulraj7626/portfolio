import 'package:flutter/material.dart';
import 'package:portfolio/constants/color_constants.dart';

import '../../model/portfolio_model.dart';
import '../../utils/text_styles.dart';
import '../common_widget/education_widget.dart';

class EducationMobile extends StatelessWidget {
  final double height;
  final PortFolioModel data;
  const EducationMobile({Key? key, required this.height, required this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(children: [
        TextTypes.xLargP("My Education"),
        const Divider(
          color: Colors.yellow,
        ),
        const SizedBox(
          height: 50,
        ),
        wrapWidget()
      ]),
    );
  }

  Widget wrapWidget() {
    return Wrap(
      children: [
        EducationWidget(
          course: data.qualification[0].course,
          place: data.qualification[0].place,
          college: data.qualification[0].college,
          year: data.qualification[0].date,
        ),
        EducationWidget(
          course: data.qualification[1].course,
          place: data.qualification[1].place,
          college: data.qualification[1].college,
          year: data.qualification[1].date,
        ),
        EducationWidget(
          course: data.qualification[2].course,
          place: data.qualification[2].place,
          college: data.qualification[2].college,
          year: data.qualification[2].date,
        ),
        EducationWidget(
          course: data.qualification[3].course,
          place: data.qualification[3].place,
          college: data.qualification[3].college,
          year: data.qualification[3].date,
        )
      ],
    );
  }
}
