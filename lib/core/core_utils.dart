import 'package:flutter/material.dart';
import 'package:wildtodo/core/theme/core/app_theme.dart';
import 'package:wildtodo/core/theme/core/app_theme_provider.dart';

extension ContextUtils on BuildContext {
  AppTheme get theme => ThemeProvider.of(this).theme;
}
