import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextField_widget extends StatelessWidget {
   TextField_widget({

    super.key, this.label='Email address'
  });
String label ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
       obscureText: label =='password'?true:false,
        keyboardType: TextInputType.emailAddress,
        style: GoogleFonts.nunito(
          textStyle: TextStyle(
              fontSize: 20,
              color: Colors.black
          ),
        ),
        cursorColor: Color(0xffCCCCCC),
        decoration: InputDecoration(

          label: Text(this.label,style: GoogleFonts.nunito(
            textStyle: TextStyle(
                fontSize: 20,
                color: Color(0xffA8A8A8)
            ),


          ),),
          disabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: Color(0xffCCCCCC),
                width: 2
            ),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: Color(0xffCCCCCC),
                width: 2
            ),
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(
                color: Color(0xffCCCCCC),
                width: 2
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: Color(0xffCCCCCC),
                width: 2
            ),
          ),

        ),
      ),
    );
  }
}
