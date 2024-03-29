import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music/components/primary_button.dart';
import 'package:music/components/secondary_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    void goToGallery() {
      Navigator.pop(context);
      Navigator.pushNamed(context, "/gallery_screen");
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            height: h * 0.75,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/home.jpeg",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Text(
                      "Dancing between",
                      style: GoogleFonts.inter(
                        fontSize: 36.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "The shadows",
                      style: GoogleFonts.inter(
                        fontSize: 36.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Of rhythm",
                      style: GoogleFonts.inter(
                        fontSize: 36.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25.h,
                ),
                PrimaryButton(
                  text: "Get Started",
                  onTap: () => goToGallery(),
                ),
                SizedBox(
                  height: 20.h,
                ),
                SecondaryButton(text: "Continue with Email", onTap: () {}),
                SizedBox(
                  height: 25.h,
                ),
                Text(
                  "by continuing you agree to terms",
                  style: GoogleFonts.inter(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                Text(
                  "of services and  Privacy policy",
                  style: GoogleFonts.inter(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
