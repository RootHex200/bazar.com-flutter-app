import 'package:cl_listing/screens/chat_inbox_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/app_colors.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.appPrimaryColor,
        title: Text("Chat",style: GoogleFonts.outfit(
            color: AppColors.appWhiteColor,
            fontSize: 16
        ),),
      ),

      body: ListView(
        children: [

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
            child: Column(
              children: [

                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context,index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> ChatInboxScreen()));
                        },
                        child: Container(
                          color: AppColors.appWhiteColor,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 8),
                            child: Row(
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(40),
                                    child: Image.asset("assets/images/default_image.jpg",height: 40,width: 40,)),

                                SizedBox(width: 10,),
                                Text("name ${index+1}",style: GoogleFonts.outfit(fontSize: 18),)
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }
                ),

              ],
            ),
          )


        ],
      ),
    );
  }
}
