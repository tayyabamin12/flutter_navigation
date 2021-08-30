import 'package:flutter/material.dart';
import 'package:navigation/widgets/main_drawer.dart';

class FiltersScreen extends StatelessWidget {
  static final routeName = '/filter-screen';
  const FiltersScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Filtered Screen'),),
      drawer: MainDrawer(),
      body: Center(
      child: Text('Filtered Content'),
    ),);
  }
}