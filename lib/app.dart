import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wildtodo/core/core_utils.dart';
import 'package:wildtodo/modules/tasks/screen/tasks_screen.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wildtodo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        drawer: const Drawer(),
        appBar: getAppBar(context),
        backgroundColor: context.theme.palette.grayscale.g1,
        body: const Center(child: TasksScreen()),
      ),
    );
  }
}

PreferredSizeWidget? getAppBar(BuildContext context) {
  return AppBar(
    iconTheme: IconThemeData(color: context.theme.palette.grayscale.g5),
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
      Padding(
        padding: const EdgeInsets.fromLTRB(16, 7, 24, 7),
        child: SizedBox(
          width: 42,
          child: CustomPaint(
            painter: ProgreesCircule(context: context, percent: 0.45),
            child: Center(
              child: ClipRRect(
                clipBehavior: Clip.hardEdge,
                borderRadius: const BorderRadius.all(Radius.circular(100)),
                child: Image.asset(
                  'assets/images/default_avata_image.png',
                  fit: BoxFit.fill,
                  height: 30,
                  width: 30,
                ),
              ),
            ),
          ),
        ),
      )
    ],
  );
}

class ProgreesCircule extends CustomPainter {
  final BuildContext context;
  final double percent;

  ProgreesCircule({
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

const text1 = '''Title
Nisi consequat ut ut adipisicing laborum esse sit. 
Culpa amet exercitation amet non magna ipsum ut ullamco deserunt culpa eiusmod et. Commodo pariatur ut sint reprehenderit mollit sunt minim.
  
Eu culpa anim ad eu veniam. Consectetur exercitation est laboris anim fugiat eu pariatur proident proident ea in elit esse magna. Minim nisi quis ad ea reprehenderit amet ut nulla. Consectetur eiusmod minim sint excepteur non adipisicing.
Exercitation reprehenderit commodo deserunt excepteur non reprehenderit dolor amet cupidatat ut ut. Consequat aliqua quis cupidatat veniam tempor reprehenderit laborum irure amet laborum. Sunt cillum aute velit enim. Anim ut aliquip ullamco irure proident enim mollit non sunt quis ex magna.

Officia officia sit ullamco duis. Ex magna velit sunt magna minim pariatur. Magna incididunt velit fugiat incididunt ipsum amet esse consequat et enim ex.
Dolore aliquip aute nostrud elit deserunt do consequat ea aliqua. Aliquip velit magna cupidatat sunt laboris irure exercitation in incididunt culpa. Incididunt in proident est exercitation aute commodo exercitation irure ad. Enim exercitation enim Lorem consequat labore. Commodo voluptate laborum exercitation ut cupidatat aliquip. Officia anim voluptate eu enim culpa reprehenderit.

Nisi consequat ut ut adipisicing laborum esse sit. 
Culpa amet exercitation amet non magna ipsum ut ullamco deserunt culpa eiusmod et. Commodo pariatur ut sint reprehenderit mollit sunt minim.
  
Eu culpa anim ad eu veniam. Consectetur exercitation est laboris anim fugiat eu pariatur proident proident ea in elit esse magna. Minim nisi quis ad ea reprehenderit amet ut nulla. Consectetur eiusmod minim sint excepteur non adipisicing.
Exercitation reprehenderit commodo deserunt excepteur non reprehenderit dolor amet cupidatat ut ut. Consequat aliqua quis cupidatat veniam tempor reprehenderit laborum irure amet laborum. Sunt cillum aute velit enim. Anim ut aliquip ullamco irure proident enim mollit non sunt quis ex magna.

Officia officia sit ullamco duis. Ex magna velit sunt magna minim pariatur. Magna incididunt velit fugiat incididunt ipsum amet esse consequat et enim ex.
Dolore aliquip aute nostrud elit deserunt do consequat ea aliqua. Aliquip velit magna cupidatat sunt laboris irure exercitation in incididunt culpa. Incididunt in proident est exercitation aute commodo exercitation irure ad. Enim exercitation enim Lorem consequat labore. Commodo voluptate laborum exercitation ut cupidatat aliquip. Officia anim voluptate eu enim culpa reprehenderit.
''';
