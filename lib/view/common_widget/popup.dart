import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../utils/text_styles.dart';

class Popop extends StatelessWidget {
  const Popop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: TextButton(
              onPressed: () {
                scaleDialog(context);
              },
              child: Text("Check"))),
    );
  }

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
      title: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          "https://i.picsum.photos/id/0/5616/3744.jpg?hmac=3GAAioiQziMGEtLbfrdbcoenXoWAW-zlyEAMkfEdBzQ",
          fit: BoxFit.cover,
        ),
      ),
      content: Column(children: [
        TextTypes.subTitleText("Project name"),
        TextTypes.normalText(
            "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available."),
        card()
      ]),
      actions: <Widget>[
        TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text("Okay"))
      ],
    );
  }
}

Widget card() {
  return Card(
    color: Colors.white30,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
    child: Container(
      padding: const EdgeInsets.all(12.0),
      child: Image.asset(
        "assets/icons/git.png",
        height: 30,
      ),
    ),
  );
}
