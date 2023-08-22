import 'dart:math';

import 'package:flutter/material.dart';
import 'package:wildtodo/core/core_utils.dart';

class ProgressCirculWidget extends StatelessWidget {
  final Widget? image;
  final double percent;

  const ProgressCirculWidget({
    required this.percent,
    this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _ProgreesCirculePainter(context: context, percent: percent),
      child: Center(
        child: ClipOval(
          clipBehavior: Clip.hardEdge,
          child: image ??
              Image.asset(
                'assets/images/default_avata_image.png',
                fit: BoxFit.fill,
                height: 30,
                width: 30,
              ),
        ),
      ),
    );
  }
}

class _ProgreesCirculePainter extends CustomPainter {
  final BuildContext context;
  final double percent;

  _ProgreesCirculePainter({
    required this.context,
    required this.percent,
  });

  void _fillArcPaint(Canvas canvas, Size size) {
    final arcFill = Paint();
    arcFill.color = context.theme.palette.accent.secondary.vivid;
    arcFill.style = PaintingStyle.stroke;
    arcFill.strokeCap = StrokeCap.round;
    arcFill.strokeWidth = 4;

    canvas.drawArc(
      const Offset(0, 0) & Size(size.width, size.height),
      -pi / 2,
      pi * 2 * percent,
      false,
      arcFill,
    );
  }

  void _spaceArcPaint(Canvas canvas, Size size) {
    final arcSpace = Paint();
    arcSpace.color = context.theme.palette.grayscale.g5;
    arcSpace.style = PaintingStyle.stroke;
    arcSpace.strokeWidth = 4;

    canvas.drawArc(
      const Offset(0, 0) & Size(size.width, size.height),
      pi * 2 * percent - (pi / 2),
      pi * 2 * (1 - percent),
      false,
      arcSpace,
    );
  }

  @override
  void paint(Canvas canvas, Size size) {
    _spaceArcPaint(canvas, size);
    _fillArcPaint(canvas, size);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
