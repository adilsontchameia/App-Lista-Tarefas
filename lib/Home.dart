import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //Controlador do textField
  TextEditingController _tituloController = TextEditingController();
  TextEditingController _descricaoController = TextEditingController();
  //Metodo para exibir dialog de adicionar e editar notas
  _adicionarEditarNotas() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Add Task"),
            content: Column(
              //Espeaco minimo para o conteudo
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: _tituloController,
                  autofocus: true,
                  decoration: InputDecoration(
                      labelText: "Title", hintText: "Write a title..."),
                ),
                TextField(
                  controller: _descricaoController,
                  decoration: InputDecoration(
                      labelText: "Content", hintText: "Write a Content..."),
                ),
              ],
            ),
            //Acoes
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text("Cancelar"),
              ),
              TextButton(
                onPressed: () {
                  //Salvar
                },
                child: Text("Salvar"),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task App"),
        backgroundColor: Colors.lightBlue,
      ),
      body: Container(),
      //ActionButton
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        child: Icon(Icons.add),
        onPressed: () {
          _adicionarEditarNotas();
        },
      ),
    );
  }
}
