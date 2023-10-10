import 'dart:ffi';

class BMIModel {
  int _id = 0;
  String _person = "";
  Int _weight = 0;
  Int _height = 0;
  bool _conclude = false;

  BMIModel(this._person, this._height, this._weight this._conclude);

  int get id => _id;
   set id(int id) {
    _id = id;
  }

  String get person => _person;
  set person(String person) {
    _person = person;
  }

  Int get height => _height;
  set height(Int height){
    _height = height;
  }

  Int get weight => _weight;
  set weight(Int weight{
    _weight = weight;
  }

  bool get conclude => _conclude;

  set conclude(bool conclude) {
    _conclude = conclude;
  }
}