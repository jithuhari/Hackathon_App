import 'package:flutter/material.dart';
import 'package:hackathon_app/Screens/login_screen/login_screen.dart';
import 'package:hackathon_app/Screens/onstart/bottom_screen.dart';
import 'package:hackathon_app/Screens/onstart/top_section.dart';

import 'package:hackathon_app/theme/color_const.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ScreenOnStart extends StatefulWidget {
  const ScreenOnStart({Key? key}) : super(key: key);

  @override
  ScreenOnStartState createState() => ScreenOnStartState();
}

class ScreenOnStartState extends State<ScreenOnStart> {
  final _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: PageView(
            controller: _pageController,
            children: const [
              CommonSCreen(
                  title: "Adopt a friend", imageAssets: "assets/intro1.png"),
              CommonSCreen(
                  title: "Quality care with style",
                  imageAssets: "assets/intro3.png"),
              CommonSCreen(
                  title: "It's your pet's time to shine",
                  imageAssets: "assets/intro2.png"),
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SmoothPageIndicator(
              controller: _pageController,
              count: 3,
              effect: const SwapEffect(
                  activeDotColor: mainColor, dotHeight: 6, dotWidth: 6),
            ),
            const Login(),
          ],
        )
      ],
    ));
  }
}

class CommonSCreen extends StatelessWidget {
  const CommonSCreen({Key? key, required this.title, required this.imageAssets})
      : super(key: key);
  final String title;
  final String imageAssets;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const TopSection(),
          const SizedBox(
            height: 10,
          ),
          SizedBox(height: MediaQuery.of(context).size.height/3, child: Image.asset(imageAssets)),
          const SizedBox(
            height: 10,
          ),
          BottomSection(title: title)
        ],
      ),
    );
  }
}
