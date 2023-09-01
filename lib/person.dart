class Person {
  String name;
  double height;
  double weight;

  Person({
    required this.name,
    required this.height,
    required this.weight,
  });

  String get getName => name;
  double get getHeight => height;
  double get getWeight => weight;

  set setName(String name) {
    this.name = name;
  }

  set setHeight(double height) {
    this.height = height;
  }

  set setWeight(double weight) {
    this.weight = weight;
  }
}

