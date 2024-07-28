import 'package:cl_listing/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: AppColors.appWhiteColor,),
          onPressed: () {
            Navigator.pop(context);
          }
        ),
        backgroundColor: AppColors.appPrimaryColor,
        title: Text("Details",style: GoogleFonts.outfit(
          color: AppColors.appWhiteColor,
          fontSize: 16
        ),),
      ),

      body: Stack(
        children: [
          ListView(
            children: [

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 300,
                    width: double.infinity,
                    child: Image.asset("assets/images/default_image.jpg", fit: BoxFit.cover),
                  ),
                  SizedBox(height: 16,),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Title",style: GoogleFonts.outfit(
                              fontSize: 18
                            ),),
                            Icon(LineIcons.heart)
                          ],
                        ),
                        SizedBox(height: 8,),
                        Text("\$150",style: GoogleFonts.outfit(
                            fontSize: 16
                        ),),

                        SizedBox(height: 16,),
                        Text("Description",style: GoogleFonts.outfit(
                            fontSize: 18
                        ),),
                        SizedBox(height: 4,),
                        Container(
                          height: 1,
                          width: double.infinity,
                          color: AppColors.appGreyColor.withOpacity(0.8),
                        ),
                        SizedBox(height: 8,),
                        Text("lorem ipsum",style: GoogleFonts.outfit(
                            fontSize: 14
                        ),),

                      ],
                    ),
                  ),
                ],
              )

            ],
          ),
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                    height: 45,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: AppColors.appPrimaryColor,
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(LineIcons.phone,color: AppColors.appWhiteColor,size: 20,),
                        SizedBox(width: 8,),
                        Text("Call",style: GoogleFonts.outfit(
                          color: AppColors.appWhiteColor,
                          fontSize: 18
                        ),)
                      ],
                    ),
                  )
                ),
                SizedBox(width: 16,),
                Expanded(
                  child: Container(
                    height: 45,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: AppColors.appPrimaryColor,
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(LineIcons.rocketChat,color: AppColors.appWhiteColor,size: 20,),
                        SizedBox(width: 8,),
                        Text("Chat",style: GoogleFonts.outfit(
                            color: AppColors.appWhiteColor,
                            fontSize: 18
                        ),)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
