import 'package:flutter/material.dart';

class TextTypes {
  static Padding descriptionText(txt) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        txt,
        textAlign: TextAlign.justify,
        style: const TextStyle(
            height: 1.3,
            letterSpacing: 1.2,
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Colors.white),
      ),
    );
  }

  static Padding normalText(txt) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
      child: Text(
        txt,
        textAlign: TextAlign.justify,
        style: const TextStyle(
            fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white),
      ),
    );
  }

  static Padding normal2Text(txt) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
      child: Text(
        txt,
        textAlign: TextAlign.start,
        style: const TextStyle(
            fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white),
      ),
    );
  }

  static Padding headText(txt) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        txt,
        style: const TextStyle(
            fontSize: 26, fontWeight: FontWeight.w600, color: Colors.white),
      ),
    );
  }

  static Padding subTitleText(txt) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        txt,
        textAlign: TextAlign.center,
        style: const TextStyle(
            fontSize: 22, fontWeight: FontWeight.w600, color: Colors.white),
      ),
    );
  }
}
