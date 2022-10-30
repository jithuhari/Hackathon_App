import 'package:flutter/material.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              letterSpacing: 2,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: const [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  "Get the best matching pet for you and get all the services related to your pet under one application",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
