import 'package:flutter/material.dart';

import 'class.dart';
import 'list.dart';

class DetailRecipe extends StatefulWidget {
  final Recipe recipe;
  final List<Ingredients> ing;
  const DetailRecipe({Key? key, required this.recipe, required this.ing})
      : super(key: key);

  @override
  _DetailRecipeState createState() => _DetailRecipeState();
}

class _DetailRecipeState extends State<DetailRecipe> {
  int sliderVal = 1;

  @override
  Widget build(BuildContext context) {
    int index = widget.ing.length;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0.0,
          title: Center(
              child: Text(widget.recipe.RecipeName + " Recipe Detail",
                  style: TextStyle(color: Colors.white)))),
      body: SafeArea(
// 3
        child: Column(
          children: <Widget>[
// 4
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(image: AssetImage(widget.recipe.RecipeURL)),
            ),
// 5
            const SizedBox(
              height: 4,
            ),
// 6
            Text(
              widget.recipe.RecipeName,
              style: const TextStyle(fontSize: 18),
            ),
            // 7
            Expanded(
// 8
              child: ListView.builder(
                padding: const EdgeInsets.all(7.0),
                itemCount: widget.recipe.ingredients.length,
                itemBuilder: (BuildContext context, int index) {
                  final ingredient = widget.recipe.ingredients[index];
// 9
                  return Text(
                      '${sliderVal * ingredient.Qty} ${ingredient.measure} ${ingredient.name}');
                },
              ),
            ),
            Slider(
              min: 1,
              max: 10,
              divisions: 10,
// 11
              label: '${sliderVal * widget.recipe.servings} servings',
// 12
              value: sliderVal.toDouble(),
// 13
              onChanged: (newValue) {
                setState(() {
                  sliderVal = newValue.round();
                });
              },
// 14
              activeColor: Colors.green,
              inactiveColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
