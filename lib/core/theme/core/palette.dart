import 'package:flutter/material.dart';

class Palette {
  const Palette({
    required this.grayscale,
    required this.accent,
    required this.status,
  });

  final GreyscaleColors grayscale;
  final AccentColors accent;
  final StatusColors status;
}

class GreyscaleColors {
  const GreyscaleColors({
    required this.g0,
    required this.g1,
    required this.g2,
    required this.g3,
    required this.g4,
    required this.g5,
    required this.g6,
  });

  final Color g0;
  final Color g1;
  final Color g2;
  final Color g3;
  final Color g4;
  final Color g5;
  final Color g6;
}

class AccentColors {
  const AccentColors({
    required this.primary,
    required this.secondary,
  });

  final ColorGroup primary;
  final ColorGroup secondary;
}

class StatusColors {
  const StatusColors({
    required this.positive,
    required this.negative,
  });

  final ColorGroup positive;
  final ColorGroup negative;
}

class ColorGroup {
  const ColorGroup({
    required this.vivid,
    required this.muted,
  });

  final Color vivid;
  final Color muted;
}
