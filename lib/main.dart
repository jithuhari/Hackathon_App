import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon_app/Screens/animal_profile/animal_profile_screen.dart';
import 'package:hackathon_app/Screens/splash_screen/splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Screens/flutter_map/flutter_map.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.latoTextTheme()

        // lobsterTwoTextTheme()

        ,
      ),
      home:

          // AnimalProfileScreen(),

          SplashScreen(),
    );
  }
}
