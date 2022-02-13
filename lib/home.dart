import 'package:flutter/material.dart';
import 'package:cuisine/recipe.dart';
import 'package:cuisine/shared/bottomNavBar.dart';
import 'package:cuisine/shared/card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff4f3ee),
      appBar: AppBar(
        title: const Text('My Cuisine'),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.search,
                  size: 26,
                )),
          ),
        ],
        //change background color to white
        backgroundColor: const Color(0xFF8A817C),
      ),
      body: SafeArea(
        child: GridView.count(
          crossAxisCount: 2,
          //add gap
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          padding: const EdgeInsets.all(10),

          children: List.generate(
              Recipe.samples.length,
              (index) => GestureDetector(
                    child: buildRecipeCard(
                      Recipe.samples[index],
                    ),
                    onTap: () => Navigator.pushNamed(context, '/recipeDesc',
                        arguments: {'recipe': Recipe.samples[index]}),
                  )),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.pushNamed(context, '/addRecipe');
      //   },
      //   backgroundColor: const Color(0xFFe0afa0),
      //   child: const Icon(Icons.add),
      // ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
