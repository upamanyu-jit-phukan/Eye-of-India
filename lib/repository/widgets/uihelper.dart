import 'package:flutter/material.dart';

class Uihelper {
  static customImage({required String img}) {
    return Image.asset('assets/images/$img');
  }

  static customText(
      {required String text,
      required Color color,
      required fontweight,
      String? fontfamily,
      double? height,
      required double fontsize}) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontsize,
        fontFamily: fontfamily ?? 'regular',
        fontWeight: fontweight,
        height: height ?? 0,
      ),
    );
  }
}
