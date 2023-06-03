import 'package:flutter/material.dart';
import 'package:wildtodo/app.dart';
import 'package:wildtodo/core/theme/core/app_theme_provider.dart';
import 'package:wildtodo/core/theme/wild_theme.dart';

void main() {
  runApp(
    const ThemeProvider(
      theme: WildDarkTheme(),
      child: AppRoot(),
    ),
  );
}
