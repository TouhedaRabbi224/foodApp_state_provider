import 'package:flutter/material.dart';
//import 'package:food_app_using_provider/models/food.dart';
import 'package:food_app_using_provider/providers/foods.dart';
import 'package:provider/provider.dart';
import './screen/foods_overview_screen.dart';
import './screen/food_details_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => Foods(),
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: FoodsOverviewScreen(),
          routes: {
            FooDetailScreen.routeName: (ctx) => FooDetailScreen(),
          }),
    );
  }
}
