import 'package:flutter/material.dart';
import 'package:flutter_web_project/pages/home.dart';
import 'package:flutter_web_project/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xpense',
      theme: ThemeData(
      fontFamily: 'HindSiliguri',
      brightness: Brightness.light,
      primaryColor: AppColors.primary
      ),
    
  home:  Home(),  );
  }
}
