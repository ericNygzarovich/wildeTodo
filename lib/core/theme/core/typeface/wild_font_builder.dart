import 'dart:ui';

import 'package:flutter/material.dart';

class WildFontBuilder {
  const WildFontBuilder({
    required this.fontFamily,
    required this.defaultColor,
    this.fontFeatures,
  });

  final String fontFamily;
  final Color defaultColor;
  final List<FontFeature>? fontFeatures;

  TextStyle build(double fontSize) {
    return TextStyle(
      height: 1.25,
      fontSize: fontSize,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontFeatures: fontFeatures,
      color: defaultColor,
    );
  }
}
