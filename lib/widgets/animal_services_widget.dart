import 'package:flutter/material.dart';
import 'package:hackathon_app/theme/colors/colors.dart';
import 'package:hackathon_app/theme/constants/const.dart';

class AnimalServiceWidget extends StatelessWidget {
  const AnimalServiceWidget({
    Key? key,
    required this.heading,
    required this.details,
    required this.cardColors,
  }) : super(key: key);

  final String heading;
  final String details;
  final Color cardColors;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        decoration: BoxDecoration(
            color: cardColors,
            boxShadow: [
              BoxShadow(
                  color: cardColors, blurRadius: 2, offset: const Offset(1, 1))
            ],
            borderRadius: BorderRadius.circular(8)),
        //width: 110,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: kPadding10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        heading,
                        style: const TextStyle(
                            color: kTextWhiteColor, 
                            fontSize: 23,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Text(
                  details,
                  style: const TextStyle(color: kTextWhiteColor),
                ),
              ),
              kheight20,
              Padding(
                padding: kPadding10,
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_right_alt_outlined,
                      color: Colors.purple.shade600,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
