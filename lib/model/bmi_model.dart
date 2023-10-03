class BMI {
  final String _id = UniqueKey().toString();
  String _person = "";
  bool _conclude = false;

  (this._person, this._conclude);

  String get id => _id;

  String get person => _person;

  set person(String person) {
    _person = person;
  }

  bool get conclude => _conclude;

  set conclude(bool conclude) {
    _conclude = conclude;
  }
}