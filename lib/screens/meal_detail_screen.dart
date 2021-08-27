import 'package:flutter/material.dart';
import 'package:navigation/dummy_data.dart';

class MealDetailScreen extends StatelessWidget {
  static final routeName = '/meal-details';

  Widget buildSectionTitle(BuildContext context, String text){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        '$text',
        style: Theme.of(context).textTheme.headline6,),
    );
  }

  Widget buildContainer(Widget child) {
    return Container(
        width: 300, height: 200,
        padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Colors.grey),
      borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context).settings.arguments as String;
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == id);
    return Scaffold(
      appBar: AppBar(title: Text('${selectedMeal.title}')),
      body:   SingleChildScrollView(
        child: Column(children: <Widget>[
          Container(
            width: double.infinity,
            height: 300,
            child: Image.network(
              selectedMeal.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          buildSectionTitle(context, "Ingredients"),
          buildContainer(ListView.builder(itemBuilder: (context, index) => Card(
              color: Theme.of(context).buttonColor,
              child: Container(padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Text(selectedMeal.ingredients[index])),
          ),
            itemCount: selectedMeal.ingredients.length,),
          ),
          buildSectionTitle(context, "Steps"),
          buildContainer(ListView.builder(itemBuilder: (context, index) => Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  child: Text("# ${index + 1}"),
                ),
                title: Text(selectedMeal.steps[index]),
              ),
              Divider(),
            ],
          )
            /*  Card(
            color: Theme.of(context).buttonColor,
            child: Container(padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Text(selectedMeal.steps[index])),
          )*/
            , itemCount: selectedMeal.steps.length,),
          ),
        ],),
      ),
    );
  }
}
