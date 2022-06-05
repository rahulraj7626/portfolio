import 'package:flutter/material.dart';

import '../../utils/text_styles.dart';

class CardWidget extends StatelessWidget {
  final String icon;
  final String? txt;
  final double size;
  final void Function()? onpressed;

  const CardWidget(
      {Key? key,
      required this.icon,
      this.txt,
      required this.size,
      this.onpressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Card(
        color: Colors.white30,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Container(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                icon,
                height: size,
                fit: BoxFit.contain,
              ),
              txt != null ? TextTypes.mediamP(txt) : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
