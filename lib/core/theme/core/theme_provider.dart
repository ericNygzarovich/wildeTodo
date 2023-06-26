import 'package:flutter/material.dart';
import 'package:wildtodo/core/theme/core/wild_theme.dart';

class ThemeProvider extends InheritedWidget {
  const ThemeProvider({
    super.key,
    required super.child,
    required this.theme,
  });

  final WildTheme theme;

  static ThemeProvider? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ThemeProvider>();
  }

  static ThemeProvider of(BuildContext context) {
    final ThemeProvider? result = maybeOf(context);
    assert(result != null, 'No ThemeProvider found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(ThemeProvider oldWidget) => oldWidget.theme != theme;
}
