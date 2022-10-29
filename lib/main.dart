import 'package:flutter/material.dart';
import 'package:hackathon_app/Screens/add_pet_screen/pet_register.dart';
import 'package:hackathon_app/Screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:

          // PetRegisterWidget()

          HomeScreen(),
    );
  }
}
