import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music/screens/gallery_screen.dart';
import 'package:music/screens/player_screen.dart';
import 'package:music/theme/dark_theme.dart';
import 'screens/home-screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(403, 880),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: DarkMode,
          home: child,
          routes: {
            "/home_screen": (context) => const HomeScreen(),
            "/gallery_screen": (context) => const GalleryScreen(),
            "/player_screen": (context) => const PlayerScreen(),
          },
        );
      },
      child: const HomeScreen(),
    );
  }
}
