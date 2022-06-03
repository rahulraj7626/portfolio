import 'package:flutter/material.dart';
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
        decoration: const BoxDecoration(color: Colors.black),
        padding: const EdgeInsets.all(15),
        height: height,
        child: Column(
          children: [
            const CircleAvatar(
              backgroundColor: Colors.white30,
              radius: 70,
              child: Icon(
                Icons.person,
                color: Colors.blue,
                size: 100,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextTypes.subTitleText("Rahul Raj"),
            ),
            TextTypes.descriptionText("Flutter Developer"),
            const Spacer(),
            Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    GestureDetector(
                        onTap: () async {},
                        child: _container(TextTypes.descriptionText("Home"))),
                    GestureDetector(
                        onTap: () async {},
                        child: _container(TextTypes.descriptionText("About"))),
                    GestureDetector(
                        onTap: () async {},
                        child:
                            _container(TextTypes.descriptionText("Education"))),
                    GestureDetector(
                        onTap: () async {},
                        child:
                            _container(TextTypes.descriptionText("Portfolio"))),
                    GestureDetector(
                        onTap: () async {},
                        child:
                            _container(TextTypes.descriptionText("Contact"))),
                  ],
                )),
            const Spacer(),
          ],
        ));
  }
}
