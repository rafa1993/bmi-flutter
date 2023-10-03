class Person {
  String _name = "";
  double _height = 0;
  double _weight = 0;

//constructor
Person(String name, double height, double weight){
  _name = name;
  _height = height;
  _weight = weight;
}

//getters and setters
  String get getName => _name;
  double get getHeight => _height;
  double get getWeight => _weight;

  set setName(String name) {
    _name = name;
  }

  set setHeight(double height) {
    _height = height;
  }

  set setWeight(double weight) {
    _weight = weight;
  }
}

