import 'package:flutter/material.dart';
import 'package:hackathon_app/theme/constants/const.dart';

class AnimalServiceWidget extends StatelessWidget {
  const AnimalServiceWidget({
    Key? key,
    required this.heading,
    required this.details,
  }) : super(key: key);

  final String heading;
  final String details;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kPadding10,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.6),
                  blurRadius: 2,
                  offset: const Offset(1, 1))
            ],
            borderRadius: BorderRadius.circular(8)),
        width: 125,
        child: Column(
          children: [
            Padding(
              padding: kPadding10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text(heading),],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Text(
                details,
                ),
            ),
          ],
        ),
      ),
    );
  }
}
