
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:restaurant_app/bn_screen/home.dart';
import 'package:restaurant_app/bn_screen/setting.dart';
import 'package:restaurant_app/bn_screen/user.dart';

class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  var list_screen =[home(),setting(),user()];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: list_screen[index],
     bottomNavigationBar: Padding(
       padding: const EdgeInsets.only(bottom: 30),
       child: Container(
         decoration: BoxDecoration(
           border: BorderDirectional(
             top: BorderSide(
               color: Colors.grey
             )
           )
         ),
         child: Padding(
           padding: const EdgeInsets.only(top: 30),
           child: Row(
             children: [
               Spacer(),
           InkWell(
             onTap: (){setState(() {
               index =0;
             });},
               child: SvgPicture.asset(
                index==0?'images/Nav 1 - Green.svg':'images/Nav.svg',
                 semanticsLabel: 'Dart Logo',
                 width: 40,
                 height: 40,
               )),
               Spacer(),
           InkWell(   onTap: (){setState(() {
             index =1;
           });},child: SvgPicture.asset(
                index==1?'images/Nav 2 - Green.svg':'images/Nav 2.svg',
                 semanticsLabel: 'Dart Logo',
                 width: 40,
                 height: 40,
               )),
               Spacer(),
           InkWell(  onTap: (){setState(() {
             index =2;
           });},
              child: SvgPicture.asset(
                index==2?'images/Nav 3 - Green.svg':'images/Nav 3.svg',
                 semanticsLabel: 'Dart Logo',
                 width: 40,
                 height: 40,
               )),
               Spacer(),

             ],
           ),
         ),
       ),
     ),
    );
  }
}
