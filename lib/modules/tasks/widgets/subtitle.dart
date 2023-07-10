import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wildtodo/core/core_utils.dart';

class Subtitle extends StatelessWidget {
  final String time;
  final String category;
  final bool isStarred;

  const Subtitle({
    super.key,
    this.category = '',
    this.isStarred = false,
    this.time = '',
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 4,
      children: [
        SubtitleItem(
          title: category,
          icon: Padding(
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
        const SizedBox(width: 4),
      ],
    );
  }
}


//  if (isStarred)
//           Padding(
//             padding: const EdgeInsets.only(top: 1),
//             child: SvgPicture.asset(
//               width: 12,
//               'assets/icons/task.svg',
//               colorFilter: ColorFilter.mode(
//                 context.theme.palette.grayscale.g5,
//                 BlendMode.srcIn,
//               ),
//             ),
//           ),
//         Text(
//           category,
//           style: TextStyle(
//             color: context.theme.palette.grayscale.g5,
//           ),
//         ),
//         if (time.isNotEmpty)
//           Icon(
//             CupertinoIcons.bell_fill,
//             size: 14,
//             color: context.theme.palette.grayscale.g5,
//           ),
//         Text(
//           time,
//           style: TextStyle(
//             color: context.theme.palette.grayscale.g5,
//           ),
//         ),
//         if (isStarred)
//           Icon(
//             Icons.star,
//             size: 14,
//             color: context.theme.palette.accent.secondary.vivid,
//           ),