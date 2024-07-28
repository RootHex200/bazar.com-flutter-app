import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_colors.dart';

class AllCategoryScreen extends StatelessWidget {
  const AllCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.appPrimaryColor,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back,color: AppColors.appWhiteColor,),
        ),
        title: Text(
          "All Category",
          style: GoogleFonts.outfit(
            color: AppColors.appWhiteColor,
            fontSize: 16,
          ),
        ),
      ),
      body:  Padding(
        padding: EdgeInsets.symmetric(horizontal: 16,vertical: 12),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search here',
                  hintStyle: GoogleFonts.outfit(
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                ),
              ),

              SizedBox(height: 16,),

              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 17,
                  childAspectRatio: 1 / 1.6,
                ),
                itemCount:  10,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.only(
                        right: 12,
                        bottom: 5
                    ),
                    child: GestureDetector(
                      onTap: (){

                      },
                      child: SizedBox(
                        width: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: Container(
                                width: 80,
                                height: 65,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: ClipOval(
                                  child: Image.asset("assets/images/default_image.jpg",
                                    height: 40,
                                    width: 40,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(height: 10,),

                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8),
                              child: Text("name ${index+1}",style: TextStyle(
                                  color: AppColors.appBlackColor ,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11
                              ),
                                textAlign: TextAlign.center,
                              ),
                            ),


                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
