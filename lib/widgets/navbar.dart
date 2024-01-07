import 'package:flutter/material.dart';
import 'package:flutter_web_project/utils/colors.dart';
import 'package:flutter_web_project/utils/styles.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return ScreenTypeLayout(
      
      mobile: MobileNavBar(),
    desktop: DesktopNavBar(),);
  }
  //=================Mobile=====================

  Widget MobileNavBar(){
    return Container(
margin: EdgeInsets.symmetric(horizontal: 20),
height: 70,
child: Row(
  mainAxisAlignment:MainAxisAlignment.spaceBetween ,
  children: [
    Icon(Icons.menu),
    navLogo()
  ],
),
    );
  }



  //=================Desktop=====================
 Widget DesktopNavBar(){
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
    height: 70,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        navLogo(),
        Row(
          children: [
            navButton('Features'),
              navButton('About Us'),
                navButton('Pricing'),
                  navButton('Feedback'),
            
          ],
        ),
        Container(
          height: 45,
          child: ElevatedButton(child: Text('Request a Demo',style: TextStyle(color: AppColors.primary )),
          style: borderedButtonStyle,
          onPressed: (){},
          ),
        )
      ],
    ),
  );
 }
Widget navButton (String text){
  return Container(
    margin:EdgeInsets.symmetric(horizontal: 10) ,
    child:  TextButton(onPressed:(){} ,
   child: Text(text,
   style:TextStyle(
    color: Colors.black,
    fontSize: 18
   ) ,), ),
  );

}
 Widget navLogo(){
  return Container(
    width: 110,
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage('assets/images/logo.png'))
    ),
  );
 }
 }







