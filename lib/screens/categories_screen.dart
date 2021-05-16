import 'package:flutter/material.dart';
import '../widgets/category_item.dart';
import '../dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  static const routeName = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'DeliMeal',
        ),
      ),
      body: SafeArea(
        child: GridView(
          padding: const EdgeInsets.all(25),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: 3 / 2,
          ),
          children: DUMMY_CATEGORIES
              .map(
                (catData) => CategoryItem(
                  color: catData.color,
                  title: catData.title,
                  id: catData.id,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
