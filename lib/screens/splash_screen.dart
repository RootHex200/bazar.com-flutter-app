import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/app_colors.dart';
import 'bottom_navbar.dart';


class SplashScreen extends StatefulWidget {
  static const String routeName = "/splashScreen";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    // Start timer to navigate after 3 seconds
    Timer(Duration(seconds: 3), () {
      // After 3 seconds, navigate to HomeScreen
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => BottomNavbar()),
      );
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appPrimaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/images/app_logo.png',
              height: 200,
              width: 300,
            ),
          ),
          SizedBox(height: 20,),
          Text(
            "Welcome to",
            style: GoogleFonts.raleway(
                color: AppColors.appWhiteColor,
                fontSize: 16,
                fontWeight: FontWeight.w500
            ),
          ),

          SizedBox(height: 20,),

          Text(
            "Bazar App",
            style: GoogleFonts.outfit(
              color: AppColors.appWhiteColor,
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
