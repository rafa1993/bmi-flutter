class BMICalculator {
  final double weight;
  final double height;
  double bmi;

  BMICalculator({
    required this.weight,
    required this.height,
  });

  void calculateBMI() {
    bmi = weight / (height * height);
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

// como usar
// final calculator = BMICalculator(weight: 70, height: 1.75);
// calculator.calculateBMI();

// print(calculator.bmi); // 22.222222
// print(calculator.getBMICategory()); // Normal
