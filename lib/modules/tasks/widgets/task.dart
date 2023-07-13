import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wildtodo/core/core_utils.dart';
import 'package:wildtodo/modules/tasks/widgets/subtitle.dart';
import 'package:wildtodo/modules/tasks/widgets/task_status_widget.dart';

enum TaskStatus {
  undone,
  success,
  failed,
}

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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 12, bottom: 12, left: 12, right: 10),
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: isPrivat
                    ? Colors.transparent
                    : context.theme.palette.status.negative.vivid,
                borderRadius: BorderRadius.circular(16),
              ),
              child: isPrivat
                  ? Icon(
                      CupertinoIcons.eye_slash_fill,
                      color: context.theme.palette.grayscale.g5,
                    )
                  : SvgPicture.asset('assets/icons/task.svg'),
            ),
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
                  categoryIcon: Padding(
                    padding: const EdgeInsets.only(top: 1),
                    child: SvgPicture.asset(
                      width: 12,
                      'assets/icons/task.svg',
                      colorFilter: ColorFilter.mode(
                        context.theme.palette.grayscale.g5,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                  category: category,
                  isStarred: isStarred,
                  time: time,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 16, 21.5, 21.5),
            child: TaskStatusWidget(status: status),
          ),
        ],
      ),
    );
  }
}
