import 'package:cl_listing/screens/privacy_policy.dart';
import 'package:cl_listing/screens/terms_service_screen.dart';
import 'package:cl_listing/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';

import 'change_password_screen.dart';
import 'favorite_screen.dart';
import 'my_ads_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.appPrimaryColor,
        title: Text("Profile",style: GoogleFonts.outfit(
          color: AppColors.appWhiteColor,
          fontSize: 16
        ),),
      ),
      
      body: ListView(
        children: [
          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
            child: Column(
              children: [

                //profile
                Row(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset("assets/images/default_image.jpg",height: 50,width: 50,)),

                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("name",style: GoogleFonts.outfit(fontSize: 18),),
                        Text("email@gmail.com",style: GoogleFonts.outfit(fontSize: 14,color: AppColors.appBlackColor.withOpacity(0.54)),),
                      ],
                    )
                  ],
                ),

                SizedBox(height: 24,),
                
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> MyAdsScreen()));
                  },
                  child: Container(
                    height: 45,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.appWhiteColor
                    ),
                    child: Row(
                      children: [
                        Icon(LineIcons.bars,color: AppColors.appBlackColor.withOpacity(0.54),),
                        SizedBox(width: 8,),
                        Text("My Ads")
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 8,),

                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> FavoriteScreen()));
                  },
                  child: Container(
                    height: 45,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: AppColors.appWhiteColor
                    ),
                    child: Row(
                      children: [
                        Icon(LineIcons.heart,color: AppColors.appBlackColor.withOpacity(0.54),),
                        SizedBox(width: 8,),
                        Text("Favourite Ads")
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 8,),

                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> ChangePasswordScreen()));
                  },
                  child: Container(
                    height: 45,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: AppColors.appWhiteColor
                    ),
                    child: Row(
                      children: [
                        Icon(LineIcons.key,color: AppColors.appBlackColor.withOpacity(0.54),),
                        SizedBox(width: 8,),
                        Text("Change Password")
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 8,),
                GestureDetector(
                  onTap: (){
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0)
                          ),
                          title: Text("Confirm Logout"),
                          content: Text("Are you sure you want to logout?"),
                          actions: <Widget>[
                            TextButton(
                              child: Text("Cancel"),
                              onPressed: () {
                                Navigator.of(context).pop(); // Close the dialog
                              },
                            ),
                            TextButton(
                              child: Text("Logout"),
                              onPressed: () {
                                Navigator.of(context).pop(); // Close the dialog
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Container(
                    height: 45,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: AppColors.appWhiteColor
                    ),
                    child: Row(
                      children: [
                        Icon(LineIcons.alternateSignOut,color: AppColors.appBlackColor.withOpacity(0.54),),
                        SizedBox(width: 8,),
                        Text("Logout")
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 8,),
                GestureDetector(
                  onTap: (){
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0)
                          ),
                          title: Text("Confirm Delete"),
                          content: Text("Are you sure you want to delete your account?"),
                          actions: <Widget>[
                            TextButton(
                              child: Text("Cancel"),
                              onPressed: () {
                                Navigator.of(context).pop(); // Close the dialog
                              },
                            ),
                            TextButton(
                              child: Text("Delete"),
                              onPressed: () {
                                Navigator.of(context).pop(); // Close the dialog
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Container(
                    height: 45,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: AppColors.appWhiteColor
                    ),
                    child: Row(
                      children: [
                        Icon(LineIcons.fireExtinguisher,color: AppColors.appBlackColor.withOpacity(0.54),),
                        SizedBox(width: 8,),
                        Text("Delete Account")
                      ],
                    ),
                  ),
                ),


                SizedBox(height: 30,),
                Container(
                  height: 45,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: AppColors.appWhiteColor
                  ),
                  child: Row(
                    children: [
                      Icon(LineIcons.user,color: AppColors.appBlackColor.withOpacity(0.54),),
                      SizedBox(width: 8,),
                      Text("Contact Us")
                    ],
                  ),
                ),

                SizedBox(height: 16,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> PrivacyPolicyScreen()));
                  },
                  child: Container(
                    height: 45,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: AppColors.appWhiteColor
                    ),
                    child: Row(
                      children: [
                        Icon(LineIcons.pollH,color: AppColors.appBlackColor.withOpacity(0.54),),
                        SizedBox(width: 8,),
                        Text("Privacy policy")
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 16,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> TermsServiceScreen()));
                  },
                  child: Container(
                    height: 45,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: AppColors.appWhiteColor
                    ),
                    child: Row(
                      children: [
                        Icon(LineIcons.keycdn,color: AppColors.appBlackColor.withOpacity(0.54),),
                        SizedBox(width: 8,),
                        Text("Terms & Condition")
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
