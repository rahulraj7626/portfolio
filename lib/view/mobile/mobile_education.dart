import 'package:flutter/material.dart';

import '../../model/portfolio_model.dart';
import '../../utils/text_styles.dart';

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
        TextTypes.largeP("My Education"),
        const Divider(
          color: Colors.yellow,
        ),
        const SizedBox(
          height: 50,
        ),
        wrp()
      ]),
    );
  }
}

Widget wrp() {
  return Wrap(
    children: [
      edu(),
      edu(),
      edu(),
      edu(),
    ],
  );
}

Widget edu() {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 10),
    child: Row(
      children: [
        Expanded(
          flex: 2,
          child: Column(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 219, 197, 2),
                    shape: BoxShape.circle),
                child: const Icon(
                  Icons.school,
                  color: Colors.white,
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
              yer(),
              TextTypes.largeP("My Education"),
              TextTypes.mediamP(
                  "My EducationMy EducationMy Education My EducationMy EducationMy Education"),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget yer() {
  return Container(
    alignment: Alignment.center,
    width: 100,
    margin: const EdgeInsets.all(8),
    padding: const EdgeInsets.all(2),
    decoration: BoxDecoration(
        color: Colors.white38, borderRadius: BorderRadius.circular(30)),
    child: TextTypes.mediamP("2015"),
  );
}
