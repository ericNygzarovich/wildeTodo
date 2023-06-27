import 'package:flutter/material.dart';
import 'package:wildtodo/core/theme/core/wild_theme.dart';
import 'package:wildtodo/core/theme/core/theme_provider.dart';

extension ContextUtils on BuildContext {
  WildTheme get theme => ThemeProvider.of(this).theme;
}

extension TextStyleUtils on TextStyle {
  TextStyle get light => copyWith(fontWeight: FontWeight.w300);
  TextStyle get regular => copyWith(fontWeight: FontWeight.w400);
  TextStyle get medium => copyWith(fontWeight: FontWeight.w500);
  TextStyle get bold => copyWith(fontWeight: FontWeight.w700);
}
