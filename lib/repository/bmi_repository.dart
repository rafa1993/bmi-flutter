import 'package:meu_imc/model/bmi_model.dart';

class BMIRepository {
  final List<BMI> _bmis = [];

  Future<List<BMI>> listar() async {
    await Future.delayed(const Duration(milliseconds: 100));
    return _bmis;
  }
}