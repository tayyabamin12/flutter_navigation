import 'package:flutter/material.dart';

class MealDetailScreen extends StatelessWidget {
  static final routeName = '/meal-details';

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
      appBar: AppBar(title: Text('$id')),
      body:   Container(
        child: Center(
          child: Text('The detail screen $id'),
        ),
      ),
    );
  }
}
