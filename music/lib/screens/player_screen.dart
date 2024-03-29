import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music/components/bottom_navigation_bar.dart';

class PlayerScreen extends StatefulWidget {
  const PlayerScreen({super.key});

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  @override
  Widget build(BuildContext context) {
    // double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Stack(
      // <-- STACK AS THE SCAFFOLD PARENT
      children: [
        Container(
          height: h,
          // ignore: deprecated_member_use
          color: Theme.of(context).colorScheme.background,
        ),
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/player.png"),
              fit: BoxFit.cover,
              //opacity: 0.8,
            ),
          ),
          height: h * 0.6,
        ),
        Scaffold(
          backgroundColor:
              Colors.transparent, // <-- SCAFFOLD WITH TRANSPARENT BG

          bottomNavigationBar: const BottomNavBar(),

          body: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: h * 0.34,
                ),
                Center(
                  child: Text(
                    "Alone in the Abyss",
                    style: GoogleFonts.inter(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ),
                Text(
                  "Youlakou",
                  style: GoogleFonts.inter(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SvgPicture.asset("assets/icons/upload_icon.svg"),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Dynamic Warmup | ",
                          style: GoogleFonts.inter(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: Theme.of(context).colorScheme.inversePrimary,
                          ),
                        ),
                        Text(
                          "4 min",
                          style: GoogleFonts.inter(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                            color: Theme.of(context).colorScheme.inversePrimary,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Stack(
                      children: [
                        SvgPicture.asset("assets/icons/track.svg"),
                        SvgPicture.asset("assets/icons/track_yellow.svg"),
                      ],
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset("assets/icons/replay.svg"),
                        SvgPicture.asset("assets/icons/previous.svg"),
                        SvgPicture.asset("assets/icons/play_btn.svg"),
                        SvgPicture.asset("assets/icons/next.svg"),
                        SvgPicture.asset("assets/icons/speaker.svg"),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
