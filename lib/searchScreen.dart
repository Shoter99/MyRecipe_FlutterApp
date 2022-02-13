import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Color(0xFFF4F3EE)),
              onPressed: () {},
              child: Text('Search...'),
            ),
            const Icon(
              Icons.search,
              size: 26,
            )
          ],
        ),
        body: CardForRecipe());
  }
}

class CardForRecipe extends StatelessWidget {
  const CardForRecipe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Flexible(
            flex: 2,
            child: Container(),
          ),
          Flexible(
            child: Text('RecipeName'),
          )
        ],
      ),
    );
  }
}
