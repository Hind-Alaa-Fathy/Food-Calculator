import 'package:flutter/material.dart';
import 'package:food_calculator/recipe.dart';
import 'package:food_calculator/recipe_menu.dart';


class RecipeDetailes extends StatefulWidget {
  const RecipeDetailes({super.key, required this.recipe});
final Recipe recipe ;

  @override
  State<RecipeDetailes> createState() => _RecipeDetailesState();
}

class _RecipeDetailesState extends State<RecipeDetailes> {
  int sliderValue= 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
      leading: IconButton(onPressed: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>const RecipeMenu()),
        );
      },icon: const Icon(Icons.arrow_back)),
         title:  Text(widget.recipe.label,style: const TextStyle(fontSize: 20)),
         backgroundColor: const Color.fromRGBO(121, 85, 71, 1.0),
       ),
      body:   Padding(
        padding: const EdgeInsets.only(
          top: 10,
        ),
        child: Column(
            children: [
               Image(image: NetworkImage(widget.recipe.imageUrl)),
              const SizedBox(height: 10),
              Text(widget.recipe.label,
                style: const TextStyle(fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(
                  216, 76, 75, 1)),),
              const SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                    itemBuilder: (BuildContext context,int index)
                  {
                    final ingredient = widget.recipe.ingredients[index];
                   return Text("${ingredient.quantity*sliderValue}"
                        "${ingredient.measure}"
                       "${ingredient.name}",
                      style: const TextStyle(
                          color: Color.fromRGBO(
                              216, 76, 75, 1.0),
                          fontSize: 20
                      ),);
                  },
                   itemCount: widget.recipe.ingredients.length,
                ),
              ),
              Slider(value: sliderValue.toDouble(),
                  min: 1,
                  max: 10,
                  divisions: 10,
                  activeColor: Colors.green,
                  inactiveColor: Colors.black,
                  onChanged: (newValue){
                 sliderValue = newValue.round();
                 setState(() {

                 });
                  })

            ],
        ),
      ),
    );
  }
}
