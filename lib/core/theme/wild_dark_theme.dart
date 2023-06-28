import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:wildtodo/core/theme/core/typeface/wild_font_builder.dart';
import 'package:wildtodo/core/theme/core/typeface/wild_typeface.dart';
import 'package:wildtodo/core/theme/core/wild_theme.dart';
import 'package:wildtodo/core/theme/core/palette/wild_palette.dart';

class WildDarkTheme extends Equatable implements WildTheme {
  @override
  final WildPalette palette = const WildPalette(
    grayscale: GreyscaleColors(
      g0: Color(0xFF1B1B1E),
      g1: Color(0xFF1F1F25),
      g2: Color(0xFF212127),
      g3: Color(0xFF25262E),
      g4: Color(0xFF2B2C35),
      g5: Color(0xFF5B5D6D),
      g6: Color(0xFFFFFFFF),
    ),
    accent: AccentColors(
      primary: ColorGroup(
        vivid: Color(0xFF0085FF),
        muted: Color(0xFF143D63),
      ),
      secondary: ColorGroup(
        vivid: Color(0xFFFFA800),
        muted: Color(0xFF754D00),
      ),
    ),
    status: StatusColors(
      positive: ColorGroup(
        vivid: Color(0xFF288F45),
        muted: Color(0xFF1A5C2C),
      ),
      negative: ColorGroup(
        vivid: Color(0xFFC02828),
        muted: Color(0xFF611414),
      ),
    ),
  );

  @override
  final WildTypeface typeface = WildTypeface(
    fontBuilder: const WildFontBuilder(
      fontFamily: "Outfit",
      defaultColor: Color(0xFFFFFFFF),
    ),
  );

  @override
  List<Object> get props => [palette, typeface];
}
