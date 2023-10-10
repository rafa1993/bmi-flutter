import 'package:meu_imc/model/bmi_model.dart';
import 'package:meu_imc/repository/bmi_database.dart';

class BMIRepository {
  Future<List<BMIModel>> getData(bool notConclude) async {
    List<BMIModel> bmis = [];
    var db = await BMIDatabase().getDatabase();
    var result = await db.rawQuery(notConclude
        ? "SELECT id, person, height, weight, conclude FROM bmis WHERE conclude = 0"
        : 'SELECT id, person,  height, weight,  conclude FROM bmis');
    for (var element in result) {
      bmis.add(BMIModel(int.parse(element["id"].toString()),
          element["person"].toString(), element["conclude"] == 1,
          element["height"] == 1, element["weight"] == 1));
    }
    return bmis;
  }

  Future<void> save(BMIModel bmiModel) async {
    var db = await  BMIDatabase().getDatabase();
    await db.rawInsert('INSERT INTO bmis (person,  height, weight,  conclude) values(?,?, ?, ?)',
        [bmiModel.person, bmiModel.conclude, bmiModel.height, bmiModel.weight]);
  }

  Future<void> update(BMIModel bmiModel) async {
    var db = await  BMIDatabase().getDatabase();
    await db.rawInsert(
        'UPDATE bmis SET person = ?, height = ? , weight = ?,  conclude = ? WHERE id = ?', [
      bmiModel.person,
      bmiModel.conclude ? 1 : 0,
      bmiModel.height,
      bmiModel.weight,
      bmiModel.id
    ]);
  }

  Future<void> delete(int id) async {
    var db = await  BMIDatabase().getDatabase();
    await db.rawInsert('DELETE FROM bmis WHERE id = ?', [id]);
  }
}