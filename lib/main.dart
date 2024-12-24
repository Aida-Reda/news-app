import 'package:flutter/material.dart';
import 'package:news_app/presentation/screens/home/home_screen.dart';

import 'config/theme/app_theme.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      routes: {
        HomeScreen.routeName : (_)=>  HomeScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
