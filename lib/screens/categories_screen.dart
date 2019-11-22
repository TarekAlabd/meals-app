import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/widgets/category_item.dart';
import 'package:flutter_complete_guide/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(15),
      children: DUMMY_CATEGORIES
          .map(
            (catData) => CategoryItem(catData.id, catData.title, catData.color),
          )
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
      ),
    );
  }
}
