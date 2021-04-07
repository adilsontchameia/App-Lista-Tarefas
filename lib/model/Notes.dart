class Notes {
  int id;
  String titulo;
  String descricao;
  String data;

  //Construtor
  Notes(this.titulo, this.descricao, this.data);

  Map toMap() {
    Map<String, dynamic> map = {
      "titulo": this.titulo,
      "descricao": this.descricao,
      "data": this.data,
    };
    return map;
  }
}
