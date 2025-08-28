import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          SizedBox(height: 64,),
         Container(
          child: Row(
            children: [
              SvgPicture.asset('images/Loco Icon.svg'),
              SizedBox(width: 10,),
               Text('Scratch',style: GoogleFonts.nunito(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                )),
                Spacer(),
               SvgPicture.asset('images/Notifications.svg',
                width: 30,
        height: 30,
      ),
      SizedBox(width: 25,),
       SvgPicture.asset('images/Message.svg'
        ,
        width: 30,
        height: 30,
       
      ),
            ],
          ),
         ),
       Expanded(
         child: ListView.builder(
          itemCount: 6,
          itemBuilder: (context, index) {
            return card_widget();
          },),
       ),
        ],
      ),
    );
  }
}

class card_widget extends StatefulWidget {
  const card_widget({
    super.key,
  });

  @override
  State<card_widget> createState() => _card_widgetState();
}

class _card_widgetState extends State<card_widget> {
  bool favorite = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Card(
        color: Colors.white,
        elevation: 9,
        shadowColor: Colors.black.withAlpha(90),
        margin: EdgeInsets.all(0),
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/3135/3135715.png')
              ),
              title: Text('Profile Name',style: GoogleFonts.nunito(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),),
              subtitle: Text('2h ago',style: GoogleFonts.nunito(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff7C7C7C)
              ),),
            ),
            Container(
              color: Colors.amber,
              width: double.infinity,
             child: Image.asset('images/Feed-Card.png',
             fit: BoxFit.fill,),
      
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.5),
              child: Column(
                children: [
                  SizedBox(height: 16,),
                  Row(children: [
                    Text('Red Wine and Mint Soufflé',style: GoogleFonts.nunito(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),),
                    Spacer(),
                    InkWell(
                      onTap: (){
                        setState(() {
                         if(favorite == false){
                            favorite = true;
                         }else{
                            favorite = false;
                         }
                        
                        });
                      },
                      child: Icon(this.favorite ==false? Icons.favorite_border:Icons.favorite_outlined,color:this.favorite ==false? Color(0xffD8D8D8):Colors.red,)),
      
                  ],),
                  SizedBox(height: 16,),
                  Text('Apparently we had reached a great height in the atmosphere, for the sky was …'
                  ,style: GoogleFonts.nunito(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff7C7C7C)
                  ),),
      
                  Row(children: [
                    Text('32 likes',style: GoogleFonts.nunito(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff606060))),
                   SizedBox(width: 20,),
                     Text('8 Comments',style: GoogleFonts.nunito(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff606060))),
                      Spacer(),
               OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  side: BorderSide(
                    color: Color(0xff53B175)
                  )
                ),
                onPressed: (){},
                icon: Icon(Icons.add,color: Color(0xff53B175),size: 20,),
                 label: Container(
                  height: 40,
                 alignment: Alignment.bottomCenter,
                   child: Text('Save',style: GoogleFonts.nunito(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color:Colors.green
                   ),),
                 ),)
                  ],),
      
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
