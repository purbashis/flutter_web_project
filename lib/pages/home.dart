import 'package:flutter/material.dart';
import 'package:flutter_web_project/pages/container1.dart';
import 'package:flutter_web_project/pages/container2.dart';
import 'package:flutter_web_project/pages/container3.dart';
import 'package:flutter_web_project/utils/constants.dart';
import 'package:flutter_web_project/widgets/navbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: const Column(
            children: [NavBar(), Container1(),Container2(),Container3()],
          ),
        ),
      ),
    );
  }
}
