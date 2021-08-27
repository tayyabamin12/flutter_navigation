import 'package:flutter/material.dart';
import 'package:navigation/screens/category_meal_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  const CategoryItem(this.id, this.title, this.color);
  
  void categorySelected(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      CategoryMealScreen.routeName,
      arguments: {
        'id': id,
        'title': title,
      },
    /*    MaterialPageRoute(builder: (_) {
      return CategoryMealScreen(id, title);
    },)*/
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>categorySelected(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Container(child: SizedBox(child: Text(
          title,
          style: Theme.of(context).textTheme.bodyText1,
        ))),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  color.withOpacity(0.6),
                  color],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight
            ),
            borderRadius: BorderRadius.circular(15)
        ),
      ),
    );
  }
}
