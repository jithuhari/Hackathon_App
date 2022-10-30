import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:hackathon_app/theme/colors/colors.dart';
import 'package:hackathon_app/theme/constants/const.dart';

class PetCategoryWidget extends StatefulWidget {
  const PetCategoryWidget({Key? key}) : super(key: key);

  @override
  State<PetCategoryWidget> createState() => _PetCategoryWidgetState();
}

class _PetCategoryWidgetState extends State<PetCategoryWidget> {
  String dropdownValue = 'Dog';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Select Category",
            style: TextStyle(fontSize: 17),
          ),
          kheight,
          DropdownButtonFormField(
            decoration: const InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.deepPurpleAccent,
                ),
              ),
            ),
            borderRadius: BorderRadius.circular(10),
            menuMaxHeight: 500,
            isDense: true,
            dropdownColor: Colors.white,
            isExpanded: false,
            value: dropdownValue,
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            items: <String>[
              "Dog",
              "Cat",
              "Cow",
              "Goat",
              "Hen",
              "Parrot",
              "Rabit",
              "Duck",
              "Buffalo",
              "Bull",
              "Horse",
              "Pig",
              "hamster",
              "Love Birds",
              "Elephant",
              "pigeon"
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: TextStyle(fontSize: 20),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
