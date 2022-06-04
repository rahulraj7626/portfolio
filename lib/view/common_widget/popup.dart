import 'package:flutter/material.dart';

import '../../utils/text_styles.dart';
import 'bullet_list.dart';

class PopupWidget {
  void scaleDialog(context) {
    showGeneralDialog(
      context: context,
      pageBuilder: (ctx, a1, a2) {
        return Container();
      },
      transitionBuilder: (ctx, a1, a2, child) {
        var curve = Curves.easeInOut.transform(a1.value);
        return Transform.scale(
          scale: curve,
          child: _dialog(ctx),
        );
      },
      transitionDuration: const Duration(milliseconds: 900),
    );
  }

  Widget _dialog(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.black,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
      titlePadding: const EdgeInsets.all(0),
      title: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              "https://i.picsum.photos/id/0/5616/3744.jpg?hmac=3GAAioiQziMGEtLbfrdbcoenXoWAW-zlyEAMkfEdBzQ",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 0.0,
            right: 0.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  icon: const Icon(
                    Icons.cancel,
                    color: Colors.yellow,
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
        TextTypes.subTitleText("Project name"),
        TextTypes.normalText(
            "In publishing and graphic used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available."),
        const BulletList([
          "Lorem ipsum dolor sit amet",
          "consectetur adipiscing elit",
        ]),
        card()
      ]),
    );
  }
}

Widget card() {
  return Card(
    color: Colors.white30,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
    child: Row(
      children: [
        Container(
          padding: const EdgeInsets.all(12.0),
          child: Image.asset(
            "assets/icons/git.png",
            height: 30,
          ),
        ),
        TextTypes.descriptionText("GitHub Repo here")
      ],
    ),
  );
}
