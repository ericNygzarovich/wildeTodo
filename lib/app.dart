import 'package:flutter/material.dart';
import 'package:wildtodo/core/core_utils.dart';
import 'package:wildtodo/modules/home/screens/home_screen.dart';
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
      home: SafeArea(
        child: HomeNavigationScreen(
          screens: [
            const TasksScreen(),
            CustomScrollView(
              slivers: [
                SliverList(
                  delegate: SliverChildListDelegate([
                    Text(
                      "Page 2",
                      style: context.theme.typeface.headline,
                    ),
                    const SizedBox(height: 24),
                    Text(
                      text1,
                      style: context.theme.typeface.body2,
                    ),
                  ]),
                ),
              ],
            ),
            CustomScrollView(
              slivers: [
                SliverList(
                  delegate: SliverChildListDelegate([
                    Text(
                      "Page 3",
                      style: context.theme.typeface.headline,
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(height: 24),
                    Text(
                      text1,
                      style: context.theme.typeface.body2,
                      textAlign: TextAlign.start,
                    ),
                  ]),
                ),
              ],
            ),
            CustomScrollView(
              slivers: [
                SliverList(
                  delegate: SliverChildListDelegate([
                    Text(
                      "Page 4",
                      style: context.theme.typeface.headline,
                    ),
                    const SizedBox(height: 24),
                    Text(
                      text1,
                      style: context.theme.typeface.body2,
                    ),
                  ]),
                ),
              ],
            ),
          ],
          navigation: const [
            HomeNavigationButtonData(
              title: "Tasks",
              icon: Icons.message,
            ),
            HomeNavigationButtonData(
              title: "Messsages",
              icon: Icons.message,
            ),
            HomeNavigationButtonData(
              title: "Friends",
              icon: Icons.message,
            ),
            HomeNavigationButtonData(
              title: "Notifications",
              icon: Icons.message,
            ),
          ],
        ),
      ),
    );
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
