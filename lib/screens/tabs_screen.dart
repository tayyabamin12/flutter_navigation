import 'package:flutter/material.dart';
import 'package:navigation/screens/categories_screen.dart';
import 'package:navigation/screens/favorite_screen.dart';
import 'package:navigation/widgets/main_drawer.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key key}) : super(key: key);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, initialIndex: 0, child: Scaffold(
      appBar: AppBar(title: Text('Meal'), bottom: TabBar(tabs: [
        Tab(icon: Icon(Icons.category), text: 'Category',),
        Tab(icon: Icon(Icons.star), text: 'Favourite',),
      ],
      ),),
      drawer: MainDrawer(),
      body: TabBarView(children: <Widget>[
        CategoriesScreen(), FavoriteScreen()
      ],),
    ),);
  }
}
