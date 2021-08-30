import 'package:flutter/material.dart';
import 'package:navigation/screens/filter_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key key}) : super(key: key);

  Widget buildList(IconData icon, String title, Function tapHandler) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title, style: TextStyle(
          fontWeight: FontWeight.w800,
      ),),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.bottomLeft,
            color: Theme.of(context).accentColor,
            child: Text('Coming up', style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 30,
            ),),
          ),
          SizedBox(height: 20,),
          buildList(Icons.restaurant, 'Categories', (){
            Navigator.of(context).pushReplacementNamed('/');
          },),
          buildList(Icons.settings, 'Settings', (){
            Navigator.of(context).pushReplacementNamed(FiltersScreen.routeName);
          }),
        ],
      ),
    );
  }
}