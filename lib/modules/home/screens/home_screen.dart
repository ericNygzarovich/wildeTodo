import 'package:flutter/material.dart';
import 'package:wildtodo/core/core_utils.dart';

import '../widgets/wildAppBar.dart';

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
    required this.floatingActionButton,
  }) : assert(screens.length == navigation.length);

  final List<Widget> screens;
  final List<HomeNavigationButtonData> navigation;
  final FloatingActionButton floatingActionButton;

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
      curve: Curves.easeIn,
    );
  }

  void _onPageChanged(int page) {
    setState(() {
      _currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> children = [];
    for (int page = 0; page < widget.navigation.length; page++) {
      if (page == 2) {
        children.add(SizedBox(
          width: 45,
          height: 45,
          child: widget.floatingActionButton,
        ));
      }
      children.add(InkWell(
        onTap: () => _changePage(page),
        child: Container(
          height: 52,
          decoration: BoxDecoration(
            color: _currentPage == page ? context.theme.palette.grayscale.g4 : Colors.transparent,
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                widget.navigation[page].icon,
                color: _currentPage == page
                    ? context.theme.palette.grayscale.g6
                    : context.theme.palette.grayscale.g5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.5),
                child: Text(
                  widget.navigation[page].title,
                  style: context.theme.typeface.caption.copyWith(
                    color: _currentPage == page
                        ? context.theme.palette.grayscale.g6
                        : context.theme.palette.grayscale.g5,
                  ),
                ),
              ),
            ],
          ),
        ),
      ));
    }

    return Scaffold(
      backgroundColor: context.theme.palette.grayscale.g1,
      drawer: const Drawer(),
      appBar: const WildAppBar(),
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
            decoration: BoxDecoration(color: context.theme.palette.grayscale.g2, boxShadow: const [
              BoxShadow(
                offset: Offset(0, -5),
                spreadRadius: 5,
                blurRadius: 5,
                color: Colors.black,
              ),
            ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: children,
            ),
          ),
        ],
      ),
    );
  }
}
