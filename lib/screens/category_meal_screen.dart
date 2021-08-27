import 'package:flutter/material.dart';
import 'package:navigation/dummy_data.dart';
import 'package:navigation/widgets/meal_item.dart';

class CategoryMealScreen extends StatelessWidget {
  static final String routeName = '/category-meal';
  /*final String catId;
  final String catTitle;

  const CategoryMealScreen(this.catId, this.catTitle);*/

  @override
  Widget build(BuildContext context) {
    final argsRoute = ModalRoute.of(context).settings.arguments as Map<String, String>;
    final catTitle = argsRoute['title'];
    final catId = argsRoute['id'];
    final catMeal = DUMMY_MEALS.where((element) {
      return element.categories.contains(catId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(catTitle),
      ),
      body: ListView.builder(itemBuilder: (context, index){
        return MealItem(
          id: catMeal[index].id,
          title: catMeal[index].title,
          imageUrl: catMeal[index].imageUrl,
          duration: catMeal[index].duration,
          complexity: catMeal[index].complexity,
          affordability: catMeal[index].affordability,);
      }, itemCount: catMeal.length,) ,
    );
  }
}
