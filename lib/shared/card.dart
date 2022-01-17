import 'package:flutter/material.dart';
import 'package:cuisine/recipe.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget buildRecipeCard(Recipe recipe) {
  return Card(
    elevation: 2.5,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    color: const Color(0xFFBCB8B1),
    child: Column(
      children: <Widget>[
        Column(
          children: <Widget>[
            Image(image: AssetImage(recipe.imageUrl)),
            Container(
              //match height to text
              padding: const EdgeInsets.all(10),
              child: Text(
                recipe.label,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF463f3A),
                ),
              ),
            ),
          ],
        )
      ],
    ),
  );
}
