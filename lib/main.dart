
 import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'login_screen.dart';
 void main(){
   runApp(myapp());
 }

 class myapp extends StatelessWidget {
   const myapp({super.key});

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       initialRoute: '/login_screen',
      routes: {
        '/login_screen':(context)=>login_screen(),
        '/home_screen':(context)=>home_screen(),
      },
     );
   }
 }
