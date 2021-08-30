import 'package:flutter/material.dart';
import 'package:navigation/widgets/category_item.dart';
import 'package:navigation/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
   const CategoriesScreen({key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return GridView(
         padding: const EdgeInsets.all(15),
           children: DUMMY_CATEGORIES.map((catItem) =>
               CategoryItem(catItem.id, catItem.title, catItem.color)).toList(),
           gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
             maxCrossAxisExtent: 200,
             childAspectRatio: 3 / 2,
             crossAxisSpacing: 20,
             mainAxisSpacing: 20,
           ),
     );
   }
 }
