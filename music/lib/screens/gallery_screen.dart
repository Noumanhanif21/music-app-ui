import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music/components/bottom_navigation_bar.dart';
import 'package:music/components/small_primary_btn.dart';
import 'package:music/components/song_container.dart';
import 'package:music/components/song_tile.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({super.key});

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  @override
  Widget build(BuildContext context) {
    //double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    void goToPlayer() {
      Navigator.pop(context);
      Navigator.pushNamed(context, "/player_screen");
    }

    return Stack(
      children: [
        Container(
          height: h,
          // ignore: deprecated_member_use
          color: Theme.of(context).colorScheme.background,
        ),
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/pic2.jpeg",
              ),
              //opacity: 0.6,
              fit: BoxFit.cover,
            ),
          ),
          height: h * 0.35,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          bottomNavigationBar: const BottomNavBar(),
          body: Padding(
            padding: const EdgeInsets.only(left: 25, top: 180, right: 25),
            child: Positioned(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "A.L.O.N.E",
                    style: GoogleFonts.inter(
                      fontSize: 36.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  // SizedBox(
                  //   height: 0.005 * h,
                  // ),
                  SmallPrimaryButton(
                    text: "Subscribe",
                    onTap: () => goToPlayer(),
                  ),
                  SizedBox(
                    height: h * 0.04,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AnimatedSmoothIndicator(
                        activeIndex: 0,
                        count: 3,
                        effect: ExpandingDotsEffect(
                          activeDotColor: Color.fromRGBO(255, 46, 0, 1),
                          dotColor: Color.fromRGBO(159, 159, 159, 1),
                          //spacing: 5,
                          // dotWidth: 14.w,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: h * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Discography",
                        style: GoogleFonts.inter(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      Text(
                        "See all",
                        style: GoogleFonts.inter(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.w,
                  ),
                  SizedBox(
                    height: h * 0.26,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      //shrinkWrap: true,
                      children: const [
                        // conatiner 1
                        SongContainer(
                            imagePath: "assets/pic3.jpeg",
                            title: "Dead inside",
                            subTitle: "2020"),

                        // container 2
                        SongContainer(
                            imagePath: "assets/pic6.jpeg",
                            title: "Alone",
                            subTitle: "2023"),

                        // conatiner 3
                        SongContainer(
                            imagePath: "assets/pic7.jpeg",
                            title: "Heartless",
                            subTitle: "2023"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Popular singles",
                        style: GoogleFonts.inter(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.inversePrimary,
                        ),
                      ),
                      Text(
                        "See all",
                        style: GoogleFonts.inter(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                    ],
                  ),

                  Expanded(
                    child: ListView(
                      shrinkWrap: true,
                      children: const [
                        SongTile(
                            imagePath: "assets/pic4.jpeg",
                            title: "We Are Chaos",
                            subTitle: "2023 * Easy Living"),
                        SongTile(
                            imagePath: "assets/pic5.jpeg",
                            title: "Smile",
                            subTitle: "2023 * Berrechid"),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
