import 'package:equatable/equatable.dart';
import 'package:wildtodo/core/theme/core/palette.dart';

class AppTheme extends Equatable {
  const AppTheme({
    required this.palette,
  });

  final Palette palette;

  @override
  List<Object> get props => [palette];
}
