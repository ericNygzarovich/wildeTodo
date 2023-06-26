import 'package:flutter/material.dart';
import 'package:wildtodo/app.dart';
import 'package:wildtodo/core/theme/core/theme_provider.dart';
import 'package:wildtodo/core/theme/wild_dark_theme.dart';

void main() {
  runApp(
    ThemeProvider(
      theme: WildDarkTheme(),
      child: const AppRoot(),
    ),
  );
}
