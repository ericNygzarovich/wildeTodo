import 'package:flutter/material.dart';

import 'package:wildtodo/modules/tasks/widgets/task.dart';

import '../../../models/calendar_item_model.dart';
import '../widgets/calendar_item_widget.dart';

List<CalendarItemModel> calendarItems = const [
  CalendarItemModel(
    stateIndicator: CalendarItemStatus.muted,
    status: true,
    dayOfWeek: 'sun',
    numberOfMounth: 24,
  ),
  CalendarItemModel(
    stateIndicator: CalendarItemStatus.muted,
    dayOfWeek: 'mon',
    numberOfMounth: 24,
  ),
  CalendarItemModel(
    stateIndicator: CalendarItemStatus.muted,
    status: true,
    isSuccses: true,
    dayOfWeek: 'tue',
    numberOfMounth: 24,
  ),
  CalendarItemModel(
    stateIndicator: CalendarItemStatus.selected,
    status: true,
    isSuccses: true,
    dayOfWeek: 'wed',
    numberOfMounth: 24,
  ),
  CalendarItemModel(
    stateIndicator: CalendarItemStatus.normal,
    dayOfWeek: 'thu',
    numberOfMounth: 24,
  ),
  CalendarItemModel(
    stateIndicator: CalendarItemStatus.normal,
    dotIndecator: true,
    dayOfWeek: 'mon',
    numberOfMounth: 24,
  ),
  CalendarItemModel(
    stateIndicator: CalendarItemStatus.normal,
    dayOfWeek: 'mon',
    numberOfMounth: 24,
  ),
  CalendarItemModel(
    stateIndicator: CalendarItemStatus.normal,
    dayOfWeek: 'mon',
    numberOfMounth: 24,
  ),
  CalendarItemModel(
    stateIndicator: CalendarItemStatus.normal,
    dayOfWeek: 'mon',
    numberOfMounth: 24,
  ),
];

class TasksScreen extends StatelessWidget {
  const TasksScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        SizedBox(
          height: 65,
          width: double.infinity,
          child: CustomScrollView(
            scrollDirection: Axis.horizontal,
            slivers: [
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: calendarItems.length,
                  (context, index) => Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                    child: CalendarItemWidget(
                      stateIndicator: calendarItems[index].stateIndicator,
                      dotIndecator: calendarItems[index].dotIndecator!,
                      status: calendarItems[index].status!,
                      isSuccses: calendarItems[index].isSuccses!,
                      dayOfWeek: calendarItems[index].dayOfWeek,
                      numberOfMounth: calendarItems[index].numberOfMounth,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 10),
        Expanded(
          child: CustomScrollView(
            slivers: [
              SliverList.separated(
                itemCount: 10,
                itemBuilder: (context, index) => const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Task(
                    status: TaskStatus.success,
                    time: '12:00 AM',
                    category: 'Importance',
                    isPrivat: true,
                    isStarred: true,
                  ),
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 5,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
