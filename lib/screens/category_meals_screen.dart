import 'package:flutter/material.dart';
import '../widgets/meal_item.dart';
import '../dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';

  // final String id;
  // final String title;
  // CategoryMealsScreen({this.title,this.id});
  @override
  Widget build(BuildContext context) {
    final routeArg =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final catTitle = routeArg['title'];
    final catId = routeArg['id'];
    final catMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(catId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          catTitle,
        ),
      ),
      body:
          // if(catMeals != null && catMeals.length >0){
          FutureBuilder(
        builder: (ctx, snapshot) {
          if (catMeals != null && catMeals.length > 0) {
            return ListView.builder(
              itemBuilder: (ctx, index) {
                return MealItem(
                  id: catMeals[index].id,
                  title: catMeals[index].title,
                  duration: catMeals[index].duration,
                  affordability: catMeals[index].affordability,
                  complexity: catMeals[index].complexity,
                  imageUrl: catMeals[index].imageUrl,
                );
              },
              itemCount: catMeals.length,
            );
          } else
            return CircularProgressIndicator();
        },
      ),
    );
  }
}
