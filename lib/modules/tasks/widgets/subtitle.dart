import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wildtodo/core/core_utils.dart';

class Subtitle extends StatelessWidget {
  final String time;
  final String category;
  final bool isStarred;
  final Widget? categoryIcon;

  const Subtitle({
    super.key,
    this.category = '',
    this.isStarred = false,
    this.time = '',
    this.categoryIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SubtitleItem(
          title: category,
          icon: categoryIcon,
        ),
        SubtitleItem(
          title: time,
          icon: Icon(
            CupertinoIcons.bell_fill,
            size: 14,
            color: context.theme.palette.grayscale.g5,
          ),
        ),
        if (isStarred)
          Icon(
            Icons.star,
            size: 14,
            color: context.theme.palette.accent.secondary.vivid,
          ),
      ],
    );
  }
}

class SubtitleItem extends StatelessWidget {
  final String title;
  final Widget? icon;

  const SubtitleItem({
    super.key,
    this.title = '',
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        if (icon != null) icon!,
        const SizedBox(width: 4),
        Text(
          title,
          style: TextStyle(
            color: context.theme.palette.grayscale.g5,
          ),
        ),
      ],
    );
  }
}
