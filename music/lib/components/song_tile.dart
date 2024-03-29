import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SongTile extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subTitle;
  const SongTile({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return ListTile(
      leading: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        width: w * 0.17,
        // height: h * 0.1,
      ),
      title: Text(
        title,
        style: GoogleFonts.inter(
          fontSize: 12.sp,
          fontWeight: FontWeight.w600,
          color: Theme.of(context).colorScheme.inversePrimary,
        ),
      ),
      subtitle: Text(
        subTitle,
        style: GoogleFonts.inter(
          fontSize: 10.sp,
          fontWeight: FontWeight.w400,
          color: Color.fromRGBO(132, 125, 125, 1),
        ),
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.more_vert,
          color: Theme.of(context).colorScheme.inversePrimary,
        ),
      ),
    );
  }
}
