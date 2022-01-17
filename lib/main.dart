import 'package:flutter/material.dart';
import 'package:cuisine/home.dart';
import 'package:cuisine/routes.dart';

void main() {
  runApp(const MyCuisine());
}

class MyCuisine extends StatelessWidget {
  const MyCuisine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Cuisine',
      routes: appRoutes,
      theme: ThemeData(
        primaryColor: const Color(0xffe0afa0),
        scaffoldBackgroundColor: const Color(0xFFf4f3ee),
        textTheme: const TextTheme(
          bodyText2: TextStyle(color: Color(0xff463f3a)),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF8A817C),
        ),
        accentColor: const Color(0xFF8a817c),
      ),
      // home: const HomeScreen(),
    );
  }
}
