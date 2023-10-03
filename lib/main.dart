import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz/my_theme_data.dart';
import 'package:quiz/second_screen.dart';
import 'package:quiz/third_screen.dart';
import 'home_screen.dart';


void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName:(context)=>HomeScreen(),
        SecondScreen.routeName:(context)=>SecondScreen(),
        ThirdScreen.routeName:(context)=>ThirdScreen(),


      },
      theme: MyThemeData.lightTheme,

    );
  }

}










































































