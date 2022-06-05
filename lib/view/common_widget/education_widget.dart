import 'package:flutter/material.dart';

import '../../constants/color_constants.dart';
import '../../utils/text_styles.dart';

class EducationWidget extends StatelessWidget {
  final String course;
  final String year;
  final String place;
  final String college;
  const EducationWidget(
      {Key? key,
      required this.course,
      required this.year,
      required this.place,
      required this.college})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Container(
                  height: 36,
                  width: 36,
                  decoration: BoxDecoration(
                      color: CColors.yellow, shape: BoxShape.circle),
                  child: Icon(
                    Icons.school,
                    color: CColors.white,
                    size: 30,
                  ),
                ),
                Container(
                  height: 150,
                  width: 4.0,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                yearWidget(year),
                TextTypes.mediamWP(course, true),
                TextTypes.mediamWP(college, false),
                TextTypes.mediamWP(place, false),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget yearWidget(year) {
    return Container(
      alignment: Alignment.center,
      width: 130,
      decoration: BoxDecoration(
          color: Colors.white38, borderRadius: BorderRadius.circular(30)),
      child: TextTypes.mediamP(year),
    );
  }
}
