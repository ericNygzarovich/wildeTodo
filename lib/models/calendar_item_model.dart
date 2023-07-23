import '../modules/tasks/widgets/calendar_item_widget.dart';

class CalendarItemModel {
  final bool? isSuccses;
  final bool? status;
  final bool? dotIndecator;
  final CalendarItemStatus stateIndicator;
  final String dayOfWeek;
  final int numberOfMounth;

  const CalendarItemModel({
    this.isSuccses = false,
    this.dotIndecator = false,
    this.status = false,
    required this.stateIndicator,
    required this.dayOfWeek,
    required this.numberOfMounth,
  });
}
