import 'package:flutter/material.dart';
 import 'screens/categories_screen.dart';
import 'screens/categories_meals_screen.dart';
import 'utils/app_routes.dart';
import 'screens/meal_detail_screen.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMenu',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        secondaryHeaderColor: Colors.amber,
        fontFamily: 'Raleway',
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
          titleMedium: const TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondensed',
          )
        )

      ),
      routes: {
       AppRoutes.HOME : (ctx) =>  const CategriesScreen(),
        AppRoutes.CATEGORIES_MEALS : (ctx) =>  const CategoriesMealsScreen(),
        AppRoutes.MEAL_DETAIL : (ctx) =>  const MealDetailScreen(),

      },
    );
  }
}
 
