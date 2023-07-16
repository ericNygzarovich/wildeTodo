import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wildtodo/core/core_utils.dart';

enum HomeBottomTabs {
  tasks(0),
  messages(1),
  friends(2),
  notifications(3);

  const HomeBottomTabs(this.number);

  final int number;
}

class HomeNavigationButtonData {
  const HomeNavigationButtonData({
    required this.icon,
    required this.title,
  });

  final String title;
  final IconData icon;
}

class HomeNavigationScreen extends StatefulWidget {
  const HomeNavigationScreen({
    super.key,
    required this.screens,
    required this.navigation,
  }) : assert(screens.length == navigation.length);

  final List<Widget> screens;
  final List<HomeNavigationButtonData> navigation;

  @override
  State<HomeNavigationScreen> createState() => _HomeNavigationScreenState();
}

class _HomeNavigationScreenState extends State<HomeNavigationScreen> {
  late PageController _controller;
  int _currentPage = _startPage;

  static const _startPage = 0;

  @override
  void initState() {
    super.initState();

    _controller = PageController(
      initialPage: _startPage,
    );
  }

  Future<void> _changePage(int page) async {
    _onPageChanged(page);
    await _controller.animateToPage(
      page,
      duration: const Duration(milliseconds: 600),
      curve: Curves.bounceIn,
    );
  }

  void _onPageChanged(int page) {
    setState(() {
      _currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.palette.grayscale.g1,
      drawer: const Drawer(),
      appBar: getAppBar(context),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _controller,
              onPageChanged: _onPageChanged,
              children: widget.screens,
            ),
          ),
          Container(
            height: 80,
            decoration: BoxDecoration(
                color: context.theme.palette.grayscale.g2,
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, -5),
                    spreadRadius: 5,
                    blurRadius: 5,
                    color: Colors.black,
                  ),
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for (int page = 0; page < widget.navigation.length; page++)
                  IconButton(
                    onPressed: () => _changePage(page),
                    icon: Icon(
                      widget.navigation[page].icon,
                      color: _currentPage == page
                          ? context.theme.palette.grayscale.g6
                          : context.theme.palette.grayscale.g5,
                    ),
                  ),
              ],
            ),
          ),
        ],
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
