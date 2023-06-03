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
      home: Scaffold(
        backgroundColor: context.theme.palette.grayscale.g1,
        body: Center(
          child: Text(
            "Hello",
            style: TextStyle(
              color: context.theme.palette.grayscale.g6,
            ),
          ),
        ),
      ),
    );
  }
}
