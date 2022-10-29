import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon_app/Screens/login_screen/sign_in.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.all(25),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.deepPurple, borderRadius: BorderRadius.circular(5)),
      child: TextButton(
        onPressed: () {
          Get.to(const SignInPage());
        },
        child: const Text(
          "Login",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
