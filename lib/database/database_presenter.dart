import 'package:test_flutter/database/database_helper.dart';
import 'package:test_flutter/model/dog.dart';

abstract class DatabaseConract {
  void screenUpdate();
}

 class DatabasePresenter {
  DatabaseConract _view;
  var db = DatabaseHelper();

  DatabasePresenter(this._view);

  delete(Dog dog) {
    var db = DatabaseHelper();
    db.deleteDog(dog);
    updateScreen();
  }

  updateScreen() {
    _view.screenUpdate();
  }

  Future<List<Dog>> getDogs() {
    return db.getDogs();
  }
}
