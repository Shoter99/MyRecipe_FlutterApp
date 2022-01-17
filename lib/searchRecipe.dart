import 'package:flutter/material.dart';

class SearchRecipe extends StatelessWidget {
  const SearchRecipe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(),
        body: Center(child: Text('Search Recipe')),
      ),
    );
  }
}
