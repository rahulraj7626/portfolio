import 'package:flutter/material.dart';
import 'package:portfolio/constants/color_constants.dart';
import 'package:portfolio/utils/text_styles.dart';

class DrawerList extends StatelessWidget {
  final double height;
  const DrawerList({Key? key, required this.height}) : super(key: key);

  Widget _container(child) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
      padding: const EdgeInsets.all(8),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white54),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: CColors.black),
        padding: const EdgeInsets.all(15),
        height: height,
        child: Column(
          children: [
            const Spacer(),
            const CircleAvatar(
              radius: 60, // Image radius
              backgroundImage: AssetImage("assets/images/dp.jpeg"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextTypes.largeP("Rahul Raj"),
            ),
            TextTypes.mediamP("Flutter Developer"),
            const Spacer(),
            Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    GestureDetector(
                        onTap: () async {},
                        child: _container(TextTypes.mediamP("Home"))),
                    GestureDetector(
                        onTap: () async {},
                        child: _container(TextTypes.mediamP("About"))),
                    GestureDetector(
                        onTap: () async {},
                        child: _container(TextTypes.mediamP("Education"))),
                    GestureDetector(
                        onTap: () async {},
                        child: _container(TextTypes.mediamP("Portfolio"))),
                    GestureDetector(
                        onTap: () async {},
                        child: _container(TextTypes.mediamP("Contact"))),
                  ],
                )),
            const Spacer(),
          ],
        ));
  }
}
