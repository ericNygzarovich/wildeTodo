import 'package:flutter/material.dart';
import 'package:wildtodo/core/core_utils.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wildtodo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SafeArea(
        child: Scaffold(
          backgroundColor: context.theme.palette.grayscale.g1,
          body: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              FontExample(
                caption: "caption",
                style: context.theme.typeface.caption.light,
              ),
              const SizedBox(height: 8),
              FontExample(
                caption: "body1",
                style: context.theme.typeface.body1.light,
              ),
              const SizedBox(height: 8),
              FontExample(
                caption: "body2",
                style: context.theme.typeface.body2.light,
              ),
              const SizedBox(height: 8),
              FontExample(
                caption: "subheading",
                style: context.theme.typeface.subheading.light,
              ),
              const SizedBox(height: 8),
              FontExample(
                caption: "title",
                style: context.theme.typeface.title.light,
              ),
              const SizedBox(height: 8),
              FontExample(
                caption: "headline",
                style: context.theme.typeface.headline.light,
              ),
              const SizedBox(height: 8),
              FontExample(
                caption: "display1",
                style: context.theme.typeface.display1.light,
              ),
              const SizedBox(height: 8),
              FontExample(
                caption: "display2",
                style: context.theme.typeface.display2.light,
              ),
              const SizedBox(height: 8),
              FontExample(
                caption: "display3",
                style: context.theme.typeface.display3.light,
              ),
              const SizedBox(height: 40),
              FontExample(
                caption: "caption",
                style: context.theme.typeface.caption.regular,
              ),
              const SizedBox(height: 8),
              FontExample(
                caption: "body1",
                style: context.theme.typeface.body1.regular,
              ),
              const SizedBox(height: 8),
              FontExample(
                caption: "body2",
                style: context.theme.typeface.body2.regular,
              ),
              const SizedBox(height: 8),
              FontExample(
                caption: "subheading",
                style: context.theme.typeface.subheading.regular,
              ),
              const SizedBox(height: 8),
              FontExample(
                caption: "title",
                style: context.theme.typeface.title.regular,
              ),
              const SizedBox(height: 8),
              FontExample(
                caption: "headline",
                style: context.theme.typeface.headline.regular,
              ),
              const SizedBox(height: 8),
              FontExample(
                caption: "display1",
                style: context.theme.typeface.display1.regular,
              ),
              const SizedBox(height: 8),
              FontExample(
                caption: "display2",
                style: context.theme.typeface.display2.regular,
              ),
              const SizedBox(height: 8),
              FontExample(
                caption: "display3",
                style: context.theme.typeface.display3.regular,
              ),
              const SizedBox(height: 40),
              FontExample(
                caption: "caption",
                style: context.theme.typeface.caption.medium,
              ),
              const SizedBox(height: 8),
              FontExample(
                caption: "body1",
                style: context.theme.typeface.body1.medium,
              ),
              const SizedBox(height: 8),
              FontExample(
                caption: "body2",
                style: context.theme.typeface.body2.medium,
              ),
              const SizedBox(height: 8),
              FontExample(
                caption: "subheading",
                style: context.theme.typeface.subheading.medium,
              ),
              const SizedBox(height: 8),
              FontExample(
                caption: "title",
                style: context.theme.typeface.title.medium,
              ),
              const SizedBox(height: 8),
              FontExample(
                caption: "headline",
                style: context.theme.typeface.headline.medium,
              ),
              const SizedBox(height: 8),
              FontExample(
                caption: "display1",
                style: context.theme.typeface.display1.medium,
              ),
              const SizedBox(height: 8),
              FontExample(
                caption: "display2",
                style: context.theme.typeface.display2.medium,
              ),
              const SizedBox(height: 8),
              FontExample(
                caption: "display3",
                style: context.theme.typeface.display3.medium,
              ),
              const SizedBox(height: 40),
              FontExample(
                caption: "caption",
                style: context.theme.typeface.caption.bold,
              ),
              const SizedBox(height: 8),
              FontExample(
                caption: "body1",
                style: context.theme.typeface.body1.bold,
              ),
              const SizedBox(height: 8),
              FontExample(
                caption: "body2",
                style: context.theme.typeface.body2.bold,
              ),
              const SizedBox(height: 8),
              FontExample(
                caption: "subheading",
                style: context.theme.typeface.subheading.bold,
              ),
              const SizedBox(height: 8),
              FontExample(
                caption: "title",
                style: context.theme.typeface.title.bold,
              ),
              const SizedBox(height: 8),
              FontExample(
                caption: "headline",
                style: context.theme.typeface.headline.bold,
              ),
              const SizedBox(height: 8),
              FontExample(
                caption: "display1",
                style: context.theme.typeface.display1.bold,
              ),
              const SizedBox(height: 8),
              FontExample(
                caption: "display2",
                style: context.theme.typeface.display2.bold,
              ),
              const SizedBox(height: 8),
              FontExample(
                caption: "display3",
                style: context.theme.typeface.display3.bold,
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}

class FontExample extends StatelessWidget {
  const FontExample({
    super.key,
    required this.caption,
    required this.style,
  });

  final String caption;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            caption,
            style: context.theme.typeface.subheading.regular.copyWith(
              color: context.theme.palette.grayscale.g5,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            "Test text",
            style: style,
          ),
        ],
      ),
    );
  }
}
