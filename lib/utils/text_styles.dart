import 'package:flutter/material.dart';
import 'package:portfolio/utils/text_style.dart';

class TextTypes {
  static Padding xLargP(txt) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(txt,
          style: AppTextStyle.fontRoboto(
            fontSize: 26,
            fontWeight: FontWeight.w600,
          )),
    );
  }

  static Padding mediamWP(txt, isBold) {
    return Padding(
      padding: isBold == true
          ? const EdgeInsets.only(bottom: 8, left: 12, top: 12)
          : const EdgeInsets.only(bottom: 2, left: 12),
      child: Text(txt,
          style: AppTextStyle.fontRoboto(
            fontSize: isBold == true ? 16 : 14,
            fontWeight: isBold == true ? FontWeight.w700 : FontWeight.w500,
          )),
    );
  }

  static Padding normalHead(txt) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(txt,
          style: AppTextStyle.fontRoboto(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          )),
    );
  }

  static Padding mediamP(txt) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Text(txt,
          style: AppTextStyle.fontRoboto(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          )),
    );
  }

  static Padding smallP(txt) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(txt,
          style: AppTextStyle.fontRoboto(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          )),
    );
  }

  static Padding xSmallP(txt) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(txt,
          style: AppTextStyle.fontRoboto(
            fontSize: 12,
            fontWeight: FontWeight.w600,
          )),
    );
  }

  static Padding largeP(txt) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        txt,
        textAlign: TextAlign.center,
        style: AppTextStyle.fontRoboto(
          fontSize: 22,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  static Padding largeHead(txt) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        txt,
        textAlign: TextAlign.center,
        style: AppTextStyle.fontRoboto(
          fontSize: 22,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
