import 'package:equatable/equatable.dart';
import 'package:wildtodo/core/theme/core/typeface/wild_typeface.dart';
import 'package:wildtodo/core/theme/core/palette/wild_palette.dart';

class WildTheme extends Equatable {
  const WildTheme({
    required this.palette,
    required this.typeface,
  });

  final WildPalette palette;
  final WildTypeface typeface;

  @override
  List<Object> get props => [palette, typeface];
}
