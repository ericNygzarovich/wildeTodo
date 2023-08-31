import 'package:flutter/material.dart';
import 'package:wildtodo/core/core_utils.dart';

import 'package:wildtodo/modules/tasks/widgets/task.dart';

import '../../../models/calendar_item_model.dart';
import '../widgets/calendar_item_widget.dart';

//hardcode list
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
      crossAxisAlignment: CrossAxisAlignment.start,
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36),
          child: Text(
            'Events',
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 18,
              color: context.theme.palette.grayscale.g5,
            ),
          ),
        ),
        const SizedBox(height: 12),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Task(
            nameOfTask: 'Event',
            status: TaskStatus.event,
            isPrivat: false,
            category: 'Importance',
            isStarred: false,
            time: '12:30 AM',
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Tasks',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 18,
                  color: context.theme.palette.grayscale.g5,
                ),
              ),
              Icon(
                Icons.format_list_bulleted_outlined,
                color: context.theme.palette.grayscale.g5,
              )
            ],
          ),
        ),
        const SizedBox(height: 20),
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
                    nameOfTask: 'Learn 655 words at summer',
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

class Event extends StatelessWidget {
  const Event({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
