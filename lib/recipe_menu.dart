import 'package:flutter/material.dart';
import 'package:food_calculator/recipe.dart';


import 'MyCard.dart';
import 'Recipe_Detailes.dart';

class RecipeMenu extends StatelessWidget {
   const RecipeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text("Foods",style: TextStyle(fontSize: 20)),
        backgroundColor: const Color.fromRGBO(121, 85, 71, 1.0),
      ),
      body: ListView.builder(itemBuilder: (BuildContext context, int index)
            {

              return GestureDetector(child: myCard(recipe: Recipe.samples[index]),
              onTap: ()=>Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RecipeDetailes(recipe: Recipe.samples[index])),
              ),);
            },
         itemCount: Recipe.samples.length,
        )

    );
  }
}
