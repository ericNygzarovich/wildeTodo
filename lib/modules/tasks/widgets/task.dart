import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wildtodo/core/core_utils.dart';

import '../screens/tasks_screen.dart';

class Task extends StatelessWidget {
  final TaskStatus status;
  final String time;
  final String category;
  final bool isPrivat;
  final bool details;
  final bool starred;

  const Task({
    super.key,
    required this.status,
    required this.isPrivat,
    required this.category,
    required this.details,
    required this.starred,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    Widget trealing = status != TaskStatus.undone
        ? Container(
            padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
            margin: const EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: status == TaskStatus.failed
                  ? context.theme.palette.status.negative.vivid
                  : context.theme.palette.status.positive.vivid,
            ),
            child: status == TaskStatus.failed
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
          )
        : Padding(
            padding: const EdgeInsets.only(right: 16),
            child: SizedBox(
              height: 30,
              width: 30,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: context.theme.palette.grayscale.g5,
                  ),
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),
          );

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: status != TaskStatus.undone
            ? context.theme.palette.grayscale.g3
            : context.theme.palette.grayscale.g4,
        borderRadius: BorderRadius.circular(15),
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
                    borderRadius: BorderRadius.circular(15),
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
                  style: TextStyle(
                    color: context.theme.palette.grayscale.g6,
                  ),
                ),
                const SizedBox(height: 4),
                Wrap(
                  spacing: 4,
                  children: [
                    if (details)
                      Padding(
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
                    if (category.isNotEmpty)
                      Text(
                        category,
                        style: TextStyle(
                          color: context.theme.palette.grayscale.g5,
                        ),
                      ),
                    if (time.isNotEmpty) ...[
                      Icon(
                        CupertinoIcons.bell_fill,
                        size: 14,
                        color: context.theme.palette.grayscale.g5,
                      ),
                      Text(
                        time,
                        style: TextStyle(
                          color: context.theme.palette.grayscale.g5,
                        ),
                      ),
                    ],
                    if (starred)
                      Icon(
                        Icons.star,
                        size: 14,
                        color: context.theme.palette.accent.secondary.vivid,
                      ),
                  ],
                ),
              ],
            ),
          ),
          trealing,
        ],
      ),
    );
  }
}
