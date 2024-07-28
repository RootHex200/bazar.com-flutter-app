import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_colors.dart';

class TermsServiceScreen extends StatelessWidget {
  const TermsServiceScreen({super.key});

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
        title: Text("Terms and Service",style: GoogleFonts.outfit(
            color: AppColors.appWhiteColor,
            fontSize: 16
        ),),
      ),
    );
  }
}
