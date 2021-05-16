import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category_meals';
  // final String id;
  // final String title;
  // CategoryMealsScreen({this.title,this.id});
  @override
  Widget build(BuildContext context) {
    final routeArg = ModalRoute.of(context).settings.arguments as Map<String,String>;
    final catTitle= routeArg['title'];
    final catId= routeArg['id'];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          catTitle,
        ),
      ),
      body: Center(
        child: Container(
          child: Text(
            catId,
          ),
        ),
      ),
    );
  }
}
