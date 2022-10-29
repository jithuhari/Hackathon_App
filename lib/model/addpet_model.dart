class Pet {
  late String name;
  late String age;
  late String gender;

  Pet(this.name, this.age, this.gender);

  Pet.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    age = json['age'];
    gender = json['gender'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = this.name;
    data['age'] = this.age;
    data['name'] = this.gender;
    return data;
  }
}
