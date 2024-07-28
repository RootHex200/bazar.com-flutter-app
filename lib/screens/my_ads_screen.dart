import 'package:cl_listing/screens/details_screen.dart';
import 'package:cl_listing/screens/edit_ads_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_colors.dart';

class MyAdsScreen extends StatelessWidget {
  const MyAdsScreen({super.key});

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
        title: Text("My Ads",style: GoogleFonts.outfit(
            color: AppColors.appWhiteColor,
            fontSize: 16
        ),),
      ),

      body: ListView(
        children: [

          ListView.builder(
            itemCount: 5,
            shrinkWrap: true,
            itemBuilder: (context,index) {
              return Padding(
                padding: const EdgeInsets.only(left: 16,right: 16,top: 12),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailsScreen()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.appWhiteColor
                    ),
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/images/default_image.jpg",
                              height: 100,
                              width: 100,
                            ),
                            SizedBox(width: 10,),
                            Column(
                              children: [
                                SizedBox(height: 16,),
                                Text("title",style: GoogleFonts.outfit(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18
                                ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),

                                Text("price",style: GoogleFonts.outfit(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14
                                ),),
                              ],
                            )
                          ],
                        ),
                        Positioned(
                          top: 10,
                          right: 10,
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> EditAdsScreen()));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: AppColors.appPrimaryColor
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 2),
                                    child: Text("Edit",style: GoogleFonts.outfit(
                                      fontSize: 14,
                                      color: AppColors.appWhiteColor
                                    ),),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: (){
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(0)
                                        ),
                                        title: Text("Confirm Deletion"),
                                        content: Text("Are you sure you want to delete this item?"),
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
                                  decoration: BoxDecoration(
                                      color: Colors.red.withOpacity(0.9)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 2),
                                    child: Text("Delete",style: GoogleFonts.outfit(
                                        fontSize: 14,
                                      color: AppColors.appWhiteColor
                                    ),),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              );
            }
          )

        ],
      ),
    );
  }
}