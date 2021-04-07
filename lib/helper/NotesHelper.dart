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

//Vou iniciar db quando nao tiver instancia configurada
  get db async {
    if (_db != null) {
      return _db;
    } else {
      _db = iniciarDB();
      return _db;
    }
  }

  //Criacao da table
  _onCreate(Database db, int version) async {
    String sql =
        "CREATE TABLE notes (id INTEGER PRIMARY KEY AUTOINCREMENT, titulo VARCHAR, descricao TEXT, data DATETIME)";
    await db.execute(sql);
  }

  //Iniciar o banco de dados
  iniciarDB() async {
    final caminhoBancoDados = await getDatabasesPath();
    final localBancoDados = join(caminhoBancoDados, "mynotes.db");
    var db =
        await openDatabase(localBancoDados, version: 1, onCreate: _onCreate);
    return db;
  }

  //Metodo para salvar as notas
  saveNotes(){
    
  }
}
