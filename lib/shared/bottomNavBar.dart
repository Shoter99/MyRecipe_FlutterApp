import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.star), label: 'Favourite'),
        ],
        fixedColor: const Color(0xffe0afa0),
        onTap: (int index) {
          switch (index) {
            case 1:
              Navigator.pushNamed(context, '/searchRecipe');
              break;
            case 2:
              Navigator.pushNamed(context, '/favourite');
              break;
          }
        });
  }
}
