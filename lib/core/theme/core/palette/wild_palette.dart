import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class WildPalette extends Equatable {
  const WildPalette({
    required this.grayscale,
    required this.accent,
    required this.status,
  });

  final GreyscaleColors grayscale;
  final AccentColors accent;
  final StatusColors status;

  @override
  List<Object?> get props => [grayscale, accent, status];
}

class GreyscaleColors extends Equatable {
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

  @override
  List<Object?> get props => [g0, g1, g2, g3, g4, g5, g6];
}

class AccentColors extends Equatable {
  const AccentColors({
    required this.primary,
    required this.secondary,
  });

  final ColorGroup primary;
  final ColorGroup secondary;

  @override
  List<Object?> get props => [primary, secondary];
}

class StatusColors extends Equatable {
  const StatusColors({
    required this.positive,
    required this.negative,
  });

  final ColorGroup positive;
  final ColorGroup negative;

  @override
  List<Object?> get props => [positive, negative];
}

class ColorGroup extends Equatable {
  const ColorGroup({
    required this.vivid,
    required this.muted,
  });

  final Color vivid;
  final Color muted;

  @override
  List<Object?> get props => [vivid, muted];
}
