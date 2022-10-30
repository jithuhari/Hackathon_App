class Pet {
  Pet({
    required this.name,
    required this.age,
    required this.gender,
  });

  String name;
  String age;
  String gender;

  factory Pet.fromJson(Map<String, dynamic> json) => Pet(
        name: json["name"],
        age: json["age"],
        gender: json["gender"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "age": age,
        "gender": gender,
      };
}
