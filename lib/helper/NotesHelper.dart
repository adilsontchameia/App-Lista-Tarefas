import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

//Instanciar de modo singleton
//Porque sempre vamos instanciar o banco de maneira unica, nao precisamos de varias instancias
//Precisamos da mesma intancia, pra manipular o banco de dados.
class NotesHelper {
  static final NotesHelper _notesHelper = NotesHelper._internal();
  Database _db;
  factory NotesHelper() {
    return _notesHelper;
  }

  NotesHelper._internal() {}

  get db async {
    //Vou iniciar db quando nao tiver instancia configurada
    if (_db != null) {
      return _db;
    }else {
      
    }
  }
}
