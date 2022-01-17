import 'package:flutter/material.dart';

class RecipeDesc extends StatefulWidget {
  const RecipeDesc({Key? key}) : super(key: key);

  @override
  _RecipeDescState createState() => _RecipeDescState();
}

class _RecipeDescState extends State<RecipeDesc> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)?.settings.arguments as Map;
    String label = data['recipe'].label;
    String imgUrl = data['recipe'].imageUrl;
    String desc = data['recipe'].description ?? 'No description available';
    String ingr = data['recipe'].ingredients ?? 'No ingredients available';
    String steps = data['recipe'].steps ?? 'No steps available';
    return Scaffold(
        appBar: AppBar(
            title: Center(
          child: Text(
            label,
            textAlign: TextAlign.center,
          ),
        )),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Image(image: AssetImage(imgUrl)),
          ),
          RowText(text: 'Description: $desc'),
          RowText(text: 'Ingredients: $ingr'),
          RowText(text: 'List of steps: $steps'),
        ]));
  }
}

class RowText extends StatelessWidget {
  final String text;

  const RowText({Key? key, required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Padding(
        padding: const EdgeInsets.only(left: 15.0, bottom: 15.0),
        child: Text(
          text,
          textAlign: TextAlign.left,
        ),
      ),
    ]);
  }
}
