
import 'package:flutter/material.dart';
import 'package:hackathon_app/Screens/home/home_screen.dart';
import 'package:hackathon_app/Screens/onstart/start_screen.dart';
import 'package:lottie/lottie.dart';
class LoginSplashScreen extends StatefulWidget {
  const LoginSplashScreen({Key? key}) : super(key: key);

  @override
  LoginSplashScreenState createState() => LoginSplashScreenState();
}

class LoginSplashScreenState extends State<LoginSplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: (10)),
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Lottie.asset(
        'assets/json/dog.json',
        controller: _controller,
        height: MediaQuery.of(context).size.height * 1,
        animate: true,
        onLoaded: (composition) {
          _controller
            ..duration = composition.duration
            ..forward().whenComplete(() => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) =>  HomeScreen()),
                ));
        },
      ),
    );
  }
}



// import 'package:flutter/material.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({Key? key}) : super(key: key);

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   Widget build(BuildContext context) {
    
//   }
// }