import 'package:flutter/material.dart';
import 'package:hackathon_app/theme/colors/colors.dart';

class ProfileCard extends StatelessWidget {
  ProfileCard({Key? key, required this.leading, required this.content})
      : super(key: key);

  String leading;
  String content;

  @override
  Widget build(BuildContext context) {
    return Container(
        // height: 100,
        // width: 300,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.deepPurple.withOpacity(0.1)),
        child: Column(
          children: [
            Text(
              leading,
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              content,
              style: const TextStyle(fontSize: 15, color: Colors.black),
            ),
          ],
        ));
  }
}
