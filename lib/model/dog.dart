class Dog {
  Dog(this.name, this.age);

  int id;
  String name;
  String age;


  Dog.map(dynamic obj) {
    this.name = obj["name"];
    this.age = obj["age"];
  }

  String get _name => name;
  String get _age => age;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["name"] = _name;
    map["age"] = _age;
    return map;
  }

  void setDogId(int id) {
    this.id = id;
  }
}
