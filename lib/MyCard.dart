

import 'package:flutter/material.dart';
import 'package:food_calculator/recipe.dart';


Widget myCard({required Recipe recipe})
{
  return Container(
    margin: const EdgeInsets.all(10),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Card(
        elevation: 3.0,
        child: Column(
          children: [
            Image(image: NetworkImage(recipe.imageUrl)),
            Container(
              color: Colors.yellow,
              width: double.infinity,
              height: 60,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(recipe.label,style: const TextStyle(
                  fontSize: 30,fontWeight: FontWeight.bold,),
                    textAlign: TextAlign.center),
              ),
            ),
          ],
        ),
      )
    ),
  );
}