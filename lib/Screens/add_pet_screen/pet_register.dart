import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';
import 'package:hackathon_app/Screens/add_pet_screen/widgets/category_widgets.dart';

import 'package:hackathon_app/Screens/add_pet_screen/widgets/gender_widgets.dart';
import 'package:hackathon_app/theme/colors/colors.dart';
import 'package:hackathon_app/theme/constants/const.dart';

class PetRegisterWidget extends StatefulWidget {
  const PetRegisterWidget({Key? key}) : super(key: key);

  @override
  State<PetRegisterWidget> createState() => _PetRegisterWidgetState();
}

class _PetRegisterWidgetState extends State<PetRegisterWidget> {
  String dropdownValue = 'Dog';

  String? gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "Pet Register",
              style: TextStyle(color: kTextColor),
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const PetCategoryWidget(),
              const SizedBox(
                height: 10,
              ),
              const TextFieldWidgets(
                name: "Name",
                text: "Enter pet name",
              ),
              const GenderWidget(),
              const DateandTimeWidget(),
              const TextFieldWidgets(
                  name: "Vaccinated date", text: "dd/mm/yyyy"),
              const SizedBox(
                height: 10,
              ),
              const TextFieldWidgets(
                  name: "Vaccine ", text: "Enter vaccine name"),
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                height: 300,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Health Description",
                        style: TextStyle(fontSize: 18),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const TextField(
                        decoration:
                            InputDecoration(border: OutlineInputBorder()),
                        keyboardType: TextInputType.multiline,
                        minLines: 2,
                        maxLines: 5,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Save",
                          style: TextStyle(
                              fontSize: 16, color: Colors.deepPurpleAccent),
                        ),
                      ),
                      Container(
                        height: 50,
                        margin: const EdgeInsets.only(
                            top: 25, right: 25, bottom: 25),
                        width: 200,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 146, 119, 221),
                            borderRadius: BorderRadius.circular(5)),
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) => Container(),
                              ),
                            );
                          },
                          child: const Text(
                            "SUBMIT",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      )
                    ]),
              )
            ],
          ),
        ));
  }
}

class DateandTimeWidget extends StatelessWidget {
  const DateandTimeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      height: 100,
      child: DateTimeFormField(
        decoration: const InputDecoration(
          hintStyle: TextStyle(color: Colors.black45),
          errorStyle: TextStyle(color: Colors.redAccent),
          border: OutlineInputBorder(),
          suffixIcon: Icon(Icons.event_note),
          labelText: 'DOB',
        ),
        mode: DateTimeFieldPickerMode.date,
        autovalidateMode: AutovalidateMode.always,
        validator: (e) =>
            (e?.day ?? 0) == 1 ? 'Please not the first day' : null,
        onDateSelected: (DateTime value) {
          print(value);
        },
      ),
    );
  }
}

class TextFieldWidgets extends StatelessWidget {
  const TextFieldWidgets({Key? key, required this.name, required this.text})
      : super(key: key);
  final String name;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: TextStyle(fontSize: 18),
          ),
          kheight,
          TextField(
            decoration: InputDecoration(
                fillColor: Colors.white,
                border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2.0)),
                hoverColor: Colors.black,
                // focusColor: Colors.deepPurpleAccent,

                hintText: text),
          ),
        ],
      ),
    );
  }
}
