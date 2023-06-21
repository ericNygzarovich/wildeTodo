import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wildtodo/core/core_utils.dart';

class Task extends StatelessWidget {
  const Task({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.infinity,
      margin: const EdgeInsets.only(left: 5, right: 5),
      decoration: BoxDecoration(
        color: context.theme.palette.grayscale.g4,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Center(
        child: ListTile(
          leading: TaskLeadingWidget(),
          title: TaskTitleWidget(),
          subtitle: TaskSubtitleWidget(),
          trailing: TaskTrailingWidget(),
          isThreeLine: false,
        ),
      ),
    );
  }
}

class TaskTrailingWidget extends StatelessWidget {
  const TaskTrailingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      height: size.width / 12.5,
      width: size.width / 12.5,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: context.theme.palette.grayscale.g5,
        ),
        borderRadius: BorderRadius.circular(100),
      ),
    );
  }
}

class TaskSubtitleWidget extends StatelessWidget {
  const TaskSubtitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final Color colorForItem = context.theme.palette.grayscale.g5;

    TextStyle textStyle = TextStyle(
      color: colorForItem,
      fontSize: size.width / 36,
    );

    return Row(
      children: [
        Text('Importance', style: textStyle),
        const SizedBox(width: 5),
        Icon(CupertinoIcons.bell_solid,
            color: colorForItem, size: size.width / 34),
        Text('12:00 AM', style: textStyle),
      ],
    );
  }
}

class TaskLeadingWidget extends StatelessWidget {
  const TaskLeadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      height: size.width / 8.2,
      width: size.width / 8.2,
      decoration: BoxDecoration(
        color: context.theme.palette.status.negative.vivid,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Icon(
        Icons.analytics_sharp,
        color: context.theme.palette.grayscale.g6,
        size: size.width / 12.4,
      ),
    );
  }
}

class TaskTitleWidget extends StatelessWidget {
  const TaskTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Text(
      'Learn 650 words at summer',
      style: TextStyle(
        color: context.theme.palette.grayscale.g6,
        fontWeight: FontWeight.w500,
        fontSize: size.width / 30.5,
      ),
    );
  }
}
