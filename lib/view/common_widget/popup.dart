import 'package:flutter/material.dart';
import 'package:portfolio/constants/color_constants.dart';

import '../../utils/text_styles.dart';
import 'bullet_list.dart';

class PopupWidget {
  void scaleDialog(
      context, title, icon, desc, List<String> bullet, linkText, linkIcon) {
    showGeneralDialog(
      context: context,
      pageBuilder: (ctx, a1, a2) {
        return Container();
      },
      transitionBuilder: (ctx, a1, a2, child) {
        var curve = Curves.easeInOut.transform(a1.value);
        return Transform.scale(
          scale: curve,
          child: _dialog(ctx, title, desc, bullet, icon, linkIcon, linkText),
        );
      },
      transitionDuration: const Duration(milliseconds: 900),
    );
  }

  Widget _dialog(
      BuildContext context, title, desc, bullet, icon, linkIcon, linkText) {
    return AlertDialog(
      backgroundColor: Colors.black,
      scrollable: true,
      insetPadding: const EdgeInsets.symmetric(vertical: 60, horizontal: 40),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
      titlePadding: const EdgeInsets.all(0),
      title: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                icon,
                height: 150,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Positioned(
            top: 0.0,
            right: 0.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  icon: Icon(
                    Icons.cancel,
                    color: CColors.yellow,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ),
          )
        ],
      ),
      content: Column(children: [
        TextTypes.largeHead(title),
        TextTypes.mediamP(desc),
        BulletList(bullet),
        card(linkIcon, linkText),
      ]),
    );
  }
}

Widget card(linkIcon, linkText) {
  return Card(
    color: CColors.grey,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(12.0),
          child: Image.asset(
            linkIcon,
            height: 30,
          ),
        ),
        TextTypes.mediamP(linkText)
      ],
    ),
  );
}
