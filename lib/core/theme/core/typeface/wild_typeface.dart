import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:wildtodo/core/theme/core/typeface/wild_font_builder.dart';

class WildTypeface extends Equatable {
  WildTypeface({
    required this.fontBuilder,
  })  : display3 = fontBuilder.build(68.66),
        display2 = fontBuilder.build(54.93),
        display1 = fontBuilder.build(43.95),
        title = fontBuilder.build(35.16),
        headline = fontBuilder.build(28.13),
        subheading = fontBuilder.build(22.5),
        body2 = fontBuilder.build(18.0),
        body1 = fontBuilder.build(14.4),
        caption = fontBuilder.build(11.52);

  final WildFontBuilder fontBuilder;

  final TextStyle display3;
  final TextStyle display2;
  final TextStyle display1;
  final TextStyle headline;
  final TextStyle title;
  final TextStyle subheading;
  final TextStyle body2;
  final TextStyle body1;
  final TextStyle caption;

  @override
  List<Object?> get props => [
        display3,
        display2,
        display1,
        title,
        headline,
        subheading,
        body2,
        body1,
        caption,
      ];
}
