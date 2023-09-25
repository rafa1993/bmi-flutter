import 'package:meu_imc/calculator.dart';
import 'package:meu_imc/meu_imc.dart';
import 'package:test/test.dart';

void main() {
  test('Assert correct calculation', () {

  // checks normal weight
  var height = 182;
  var weight = 76;  
  
   var bmi = BMICalculator(height: height, weight: weight);

  expect(bmi, '22.94');  
  });
}