import 'package:flutter/material.dart';

import 'class.dart';
import 'detail.dart';
import 'list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Recipe> MyRecipeList = <Recipe>[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    MyRecipeList = getRecipeList();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 0.0,
                title: Center(
                    child:
                        Text("Recipe", style: TextStyle(color: Colors.black)))),
            body: SafeArea(
              child: Container(
                  child: ListView.builder(
                itemCount: MyRecipeList.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailRecipe(
                                  recipe: MyRecipeList[index],
                                  ing: MyRecipeList[index].ingredients)),
                        );
                      },
                      child: RecipeWidget(recipe: MyRecipeList[index]));
                },
              )),
            )));
  }
}

class RecipeWidget extends StatelessWidget {
  final recipe;
  const RecipeWidget({this.recipe});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
            child: Padding(
              padding: EdgeInsets.all(5),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    recipe.RecipeURL,
                  ),
                  SizedBox(
                    height: 14.0,
                  ),
                  Text(recipe.RecipeName,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ))
                ],
              ),
            )));
  }
}
