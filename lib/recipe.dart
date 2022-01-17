class Recipe {
  String label;
  String imageUrl;
  String? description;
  String? ingredients;
  String? steps;
  int? duration;

  Recipe(this.label, this.imageUrl,
      {this.description, this.ingredients, this.steps, this.duration});
  static List<Recipe> samples = [
    Recipe(
      'Spaghetti and Meatballs',
      'assets/spagetti.jpg',
      description: 'Nice spagetti',
      ingredients: 'Spagetti, meatballs, tomato sauce',
      steps:
          '\n    1. Put the spagetti in a pan\n    2. Put the meatballs in a pan\n    3. Put the tomato sauce in a pan',
    ),
    Recipe(
      'Spaghetti and Meatballs',
      'assets/spagetti.jpg',
    ),
    Recipe(
      'Spaghetti and Meatballs',
      'assets/spagetti.jpg',
    ),
    Recipe(
      'Tomato Soup',
      'assets/27729023535_a57606c1be.jpg',
    ),
    Recipe(
      'Grilled Cheese',
      'assets/3187380632_5056654a19_b.jpg',
    ),
    Recipe(
      'Chocolate Chip Cookies',
      'assets/15992102771_b92f4cc00a_b.jpg',
    ),
    Recipe(
      'Taco Salad',
      'assets/8533381643_a31a99e8a6_c.jpg',
    ),
    Recipe(
      'Hawaiian Pizza',
      'assets/15452035777_294cefced5_c.jpg',
    ),
  ];
}
