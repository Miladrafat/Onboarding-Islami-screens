import 'package:flutter/material.dart';
import 'package:islami/Sebha.dart';
import 'OnBoardingScreen.dart';

void main () async
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  static const String routeName="MyApp";
   const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Islami',
      routes: {
        OnBoardingScreen.routeName:(_)=>OnBoardingScreen(),
        SebhaScreen.routeName:(_)=>SebhaScreen(),
        MyApp.routeName:(_)=>MyApp(),
      },
      initialRoute:
      OnBoardingScreen.onBoardingCheck?
      SebhaScreen.routeName:
      OnBoardingScreen.routeName
    );
  }
}
