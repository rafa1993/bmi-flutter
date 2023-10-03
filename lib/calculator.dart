import 'package:meu_imc/person.dart';

class BMICalculator {
  double bmi;
  final Person person;

  BMICalculator({
    required this.person,
  });

  void calculateBMI() {
    bmi = person.getWeight / (person.getHeight * person.getHeight);
  }

  String getBMICategory() {
    if (bmi < 18.5) {
      return 'Underweight';
    } else if (bmi < 25) {
      return 'Normal';
    } else if (bmi < 30) {
      return 'Overweight';
    } else {
      return 'Obese';
    }
  }
}
