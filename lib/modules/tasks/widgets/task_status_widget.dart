import 'package:flutter/material.dart';
import 'package:wildtodo/core/core_utils.dart';

import '../../../models/enum_for_task_widget.dart';

class TaskStatusWidget extends StatelessWidget {
  final TaskStatus status;

  const TaskStatusWidget({
    super.key,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        border: Border.all(
          color: status == TaskStatus.undone
              ? context.theme.palette.grayscale.g5
              : Colors.transparent,
        ),
        borderRadius: BorderRadius.circular(100),
        color: status == TaskStatus.undone
            ? Colors.transparent
            : status == TaskStatus.failed
                ? context.theme.palette.status.negative.vivid
                : context.theme.palette.status.positive.vivid,
      ),
      child: status == TaskStatus.undone
          ? const SizedBox(
              height: 18,
              width: 18,
            )
          : status == TaskStatus.failed
              ? Icon(
                  Icons.clear,
                  size: 18,
                  color: context.theme.palette.grayscale.g6,
                )
              : Icon(
                  Icons.check,
                  size: 20,
                  color: context.theme.palette.grayscale.g6,
                ),
    );
  }
}
