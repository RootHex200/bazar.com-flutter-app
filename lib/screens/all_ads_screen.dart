import 'package:cl_listing/src/features/product/products/presentation/view/components/products_item_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_colors.dart';

class AllAdsScreen extends StatelessWidget {
  const AllAdsScreen({super.key});

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
          "All Ads",
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

              ProductItem(),
            ],
          ),
        ),
      ),
    );
  }
}

