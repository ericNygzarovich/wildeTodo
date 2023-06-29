import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wildtodo/core/core_utils.dart';
import 'package:wildtodo/modules/tasks/widgets/subtitle.dart';
import 'package:wildtodo/modules/tasks/widgets/task_status_widget.dart';

import '../../../models/enum_for_task_widget.dart';

class Task extends StatelessWidget {
  final TaskStatus status;
  final String time;
  final String category;
  final bool isPrivat;

  final bool isStarred;

  const Task({
    super.key,
    required this.status,
    required this.isPrivat,
    required this.category,
    required this.isStarred,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: status != TaskStatus.undone
            ? context.theme.palette.grayscale.g3
            : context.theme.palette.grayscale.g4,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          isPrivat
              ? Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 24, horizontal: 22),
                  child: Icon(
                    CupertinoIcons.eye_slash_fill,
                    color: context.theme.palette.grayscale.g5,
                  ),
                )
              : Container(
                  margin: const EdgeInsets.only(
                      top: 12, bottom: 12, left: 12, right: 10),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: context.theme.palette.status.negative.vivid,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: SvgPicture.asset('assets/icons/task.svg'),
                ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Learn 650 words at summer',
                  textAlign: TextAlign.start,
                  style: context.theme.typeface.body2.medium.copyWith(
                    color: context.theme.palette.grayscale.g6,
                  ),
                ),
                const SizedBox(height: 4),
                Subtitle(
                  category: category,
                  isStarred: isStarred,
                  time: time,
                )
              ],
            ),
          ),
          TaskStatusWidget(status: status),
        ],
      ),
    );
  }
}
