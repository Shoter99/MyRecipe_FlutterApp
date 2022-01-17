import 'package:flutter/material.dart';
import 'package:cuisine/recipe.dart';

class AddRecipe extends StatelessWidget {
  const AddRecipe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Recipe'),
      ),
      body: (const AddRecipeForm()),
    );
  }
}

class AddRecipeForm extends StatefulWidget {
  const AddRecipeForm({Key? key}) : super(key: key);

  @override
  _AddRecipeFormState createState() => _AddRecipeFormState();
}

class _AddRecipeFormState extends State<AddRecipeForm> {
  final _formKey = GlobalKey<FormState>();
  String recipeName = '';
  String ingredients = '';
  String instruction = '';
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Recipe Name',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter a recipe name';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Ingredients',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter ingredients';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Instructions',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter instructions';
                }
                return null;
              },
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a Snackbar.
                  // try:
                  //   Recipe.samples.add(

                  //   )

                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                }
              },
              child: const Text('Submit'),
            ),
          ],
        ));
  }
}
