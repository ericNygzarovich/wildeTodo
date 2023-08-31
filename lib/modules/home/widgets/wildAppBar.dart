import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wildtodo/core/core_utils.dart';

import 'progress_circule_widget.dart';

class WildAppBar extends StatelessWidget implements PreferredSizeWidget {
  const WildAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: context.theme.palette.grayscale.g5),
      shadowColor: Colors.transparent,
      backgroundColor: context.theme.palette.grayscale.g1,
      title: Text(
        'March 2023',
        style: context.theme.typeface.subheading.bold,
      ),
      actions: [
        Icon(
          CupertinoIcons.bell_fill,
          color: context.theme.palette.grayscale.g5,
          size: 16,
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(16, 7, 24, 7),
          child: SizedBox(
            width: 42,
            child: ProgressCirculWidget(percent: 0.72),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 60);
}
