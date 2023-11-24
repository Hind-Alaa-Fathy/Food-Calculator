class Recipe {
  String label;
  String imageUrl;
  int servings;
  List<Ingredient> ingredients;
  Recipe(this.label, this.imageUrl, this.servings, this.ingredients);
  static List<Recipe> samples = [
    Recipe(
      'Spaghetti and Meatballs',
      'https://img.freepik.com/free-photo/penne-pasta-with-meatballs-tomato-sauce-white-bowl_2829-7663.jpg?size=626&ext=jpg&ga=GA1.1.1630149759.1687257850&semt=ais',
      4,
      [
        Ingredient(1, 'box', 'Spaghetti'),
        Ingredient(4, '', 'Frozen Meatballs'),
        Ingredient(0.5, 'jar', 'sauce'),
      ],
    ),
    Recipe(
      'Tomato Soup',
      'https://img.freepik.com/free-photo/warm-tomato-soup-serve-bowl_1150-42626.jpg?size=626&ext=jpg&ga=GA1.1.1630149759.1687257850&semt=ais',
      2,
      [
        Ingredient(1, 'can', 'Tomato Soup'),
      ],
    ),
    Recipe(
      'Grilled Cheese',
      'https://img.freepik.com/free-photo/close-up-melted-cheese-sandwich_23-2149286864.jpg?size=626&ext=jpg&ga=GA1.1.1630149759.1687257850&semt=ais',
      1,
      [
        Ingredient(2, 'slices', 'Cheese'),
        Ingredient(2, 'slices', 'Bread'),
      ],
    ),
    Recipe(
      'Chocolate Chip Cookies',
      'https://img.freepik.com/free-photo/chocolate-chip-muffin_74190-7716.jpg?size=626&ext=jpg&ga=GA1.1.1630149759.1687257850&semt=ais',
      24,
      [
        Ingredient(4, 'cups', 'flour'),
        Ingredient(2, 'cups', 'sugar'),
        Ingredient(0.5, 'cups', 'chocolate chips'),
      ],
    ),
    Recipe(
      'Taco Salad',
      'https://img.freepik.com/free-photo/mexican-tacos-with-meat-vegetables-red-onion_2829-8286.jpg?size=626&ext=jpg&ga=GA1.1.1630149759.1687257850&semt=ais',
      1,
      [
        Ingredient(4, 'oz', 'nachos'),
        Ingredient(3, 'oz', 'taco meat'),
        Ingredient(0.5, 'cup', 'cheese'),
        Ingredient(0.25, 'cup', 'chopped tomatoes'),
      ],
    ),
    Recipe(
      'Hawaiian Pizza',
      'https://img.freepik.com/free-photo/crispy-mixed-pizza-with-olives-sausage_140725-3095.jpg?size=626&ext=jpg&ga=GA1.1.1630149759.1687257850&semt=ais',
      4,
      [
        Ingredient(1, 'item', 'pizza'),
        Ingredient(1, 'cup', 'pineapple'),
        Ingredient(8, 'oz', 'ham'),
      ],
    ),
  ];
}

class Ingredient {
  double quantity;
  String measure;
  String name;

  Ingredient(this.quantity, this.measure, this.name);
}
