import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
class user extends StatefulWidget {
  const user({super.key});

  @override
  State<user> createState() => _userState();
}

class _userState extends State<user> {
  int index =0;
  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          SizedBox(height: 49,),
          Row(children: [
            Text('My Kitchen',style: GoogleFonts.nunito(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),),
            Spacer(),
            SvgPicture.asset(
              'images/Settings.svg',
              width: 30,
              height: 30,
            ),
            Text(' Settings',
            style: GoogleFonts.nunito(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),),

          ],),
          SizedBox(height: 30,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            CircleAvatar(
              backgroundImage:  AssetImage('images/Oval.png'),
              radius: 50,
            ),
            SizedBox(width: 15,),
            Padding(
              padding: const EdgeInsets.
            only(top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('Nick Evans',style: GoogleFonts.nunito(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),),
                Text('Potato Master',style: GoogleFonts.nunito(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF9B9B9B),
                ),),
                SizedBox(height: 14,),
                 Text('$index followers   .    23k likes',style: GoogleFonts.nunito(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF9B9B9B),
                ),),
              ],),
            ),
            Spacer(),
            Icon(Icons.edit_outlined)
        ],
      ),
      SizedBox(height: 25,),
      Divider(),
      SizedBox(height: 25,),
      Row(children: [
        InkWell(
          onTap: (){
            setState(() {
              index =0;
                 print(index);

            });
          },
          child: user_widget()),
        Spacer(),
           InkWell( onTap: (){
            setState(() {
              index =1;
                 print(index);

            });},
            child: user_widget()),
            Spacer(),
              InkWell(
                onTap: (){
            setState(() {
              index =2;
              print(index);

            });},
                child: user_widget()),
      ],),
      Divider(),
   
       index == 0?grid_widget():Container(),
        ]
    ));
  }
}

class grid_widget extends StatelessWidget {
  const grid_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
    child: GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2, // 2 columns
    crossAxisSpacing: 10,
    mainAxisSpacing: 10,
        ),
       itemBuilder: (context, index) {
        return Container(
          width: 155,
          height: 132,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white ),
            child: Column(
              children: [
                Container(
                  width: 184,
                  height: 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
    
                    image: DecorationImage(
                      image: AssetImage('images/Mask Group.png'),
                      fit: BoxFit.fill
                  ),
                 )),
                 SizedBox(height: 15,),
                Text('name',style: GoogleFonts.nunito(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),)
              ],
            ),
        );
       },
       ),
          );
  }
}

class user_widget extends StatelessWidget {
  const user_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('20',style: GoogleFonts.nunito(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),),
        Text('Recipes',style: GoogleFonts.nunito(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),),
        Container(
          height: 4,
          width: 84,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15)
            ),
            color: Color(0xFF30BE76)
          ),
        ),
        
    
      ],
    );
  }
}
