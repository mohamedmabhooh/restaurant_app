import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Widget/TextField_widget.dart';
 class login_screen extends StatefulWidget {
   const login_screen({super.key});

   @override
   State<login_screen> createState() => _login_screenState();
 }

 class _login_screenState extends State<login_screen> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.white,
body: Column(

  children: [
    Container(
      width: double.infinity,
      height: 350,
      decoration: BoxDecoration(

       image: DecorationImage(
         fit: BoxFit.fill,
           image: AssetImage('images/Image.png'))
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 80,),
            Row(
              children: [
                  Image.asset('images/Loco Icon.png'),

                   Padding(
                     padding: const EdgeInsets.only(left: 10,top: 5),
                     child: Text('Scratch',style: GoogleFonts.nunito(
                       textStyle: TextStyle(
                         fontWeight: FontWeight.bold,
                         fontSize: 20,
                         color: Colors.black
                       )
                     ),),
                   )
              ],
            ),
            SizedBox(height: 50,),
            Text('Welcome Back!',style: GoogleFonts.nunito(
                textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.black
                )
            ),)
          ],
        ),
      ),

    ),
    Row(
      children: [

        Padding(
          padding: const EdgeInsets.only(
            left: 25,
            top: 22
          ),
          child: Text('Please login to continue.',style: GoogleFonts.nunito(
            textStyle: TextStyle(
              fontSize: 14,
              color: Color(0xff606060)
            )
          ),),
        ),
      ],
    ),
    SizedBox(height:48,),
    TextField_widget(),

    Padding(
      padding: const EdgeInsets.only(top: 32,right: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(onTap:(){},
              child: Text('Forgot password?',style: GoogleFonts.nunito(
                color: Color(0xff606060),
                fontSize: 15
              ),))
        ],
      ),
    ),
    TextField_widget(label: 'password',),
    SizedBox(height: 30,),
    ElevatedButton(
      style: ElevatedButton.styleFrom(
        alignment: AlignmentDirectional.bottomStart,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        maximumSize: Size(325, 50),
        minimumSize:Size(325, 50) ,
        backgroundColor: Color(0xff30BE76),

      ),
        onPressed: (){
        Navigator.pushNamed(context, '/home_screen');
        }, child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text('Login',style: GoogleFonts.nunito(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18
          ),),
        )),
    SizedBox(height: 32,),
    Text('New to Scratch?',style: GoogleFonts.nunito(
      fontSize: 16,
      color: Color(0xffA8A8A8)
    ),),
    SizedBox(height: 8,),
    Text('Create Account Here',style: GoogleFonts.nunito(
        fontSize: 19,
        fontWeight: FontWeight.bold,
        color: Color(0xff30BE76)
    ),)
  ],
),
     );
   }
 }

