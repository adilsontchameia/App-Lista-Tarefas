class Notes {
  int id;
  String titulo;
  String descricao;
  String data;

  Notes(this.titulo, this.descricao, this.data);

  Map toMap() {
    Map<String, dynamic> map = {
      "titulo": this.titulo,
      "descricao": this.descricao,
      "data": this.data,
    };

    if (this.id != null) {
      map["id"] = this.id;
    }

    return map;
  }
}
