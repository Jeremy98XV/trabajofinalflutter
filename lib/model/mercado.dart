import 'dart:convert';
import 'dart:ffi';

List<Mercado> mercadoFromJson(String str) =>
    List<Mercado>.from(json.decode(str).map((x) => Mercado.fromJson(x)));
String mercadoToJson(List<Mercado> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Mercado {
  Mercado({
    required this.name,
    required this.urlFoto,
    required this.valoracion,
    required this.direccion,
    required this.id,
  });

  String name;
  String urlFoto;
  num valoracion;
  String direccion;
  String id;

  factory Mercado.fromJson(Map<String, dynamic> json) => Mercado(
      name: json["name"],
      urlFoto: json["urlFoto"],
      valoracion: json["valoracion"],
      direccion: json["direccion"],
      id: json["id"]);

  Map<String, dynamic> toJson() => {
        "name": name,
        "urlFoto": urlFoto,
        //      "valoracion": valoracion,
        "direccion": direccion,
        "id": id
      };
}
