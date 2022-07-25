import 'dart:convert';

class APIDTO {
  String? id;
  String? usuario;
  String? titulo;
  String? imgum;
  String? imgdois;
  String? imgtres;
  String? imgquatro;
  String? imgcinco;
  String? paragrafos;
  String? fonteum;
  String? fontedois;
  String? fontetres;
  String? fontequatro;
  String? fontecinco;
  String? video;
  /*Charges*/
  String? img;
  String? fonteDaCharge;
  /*-------*/
  bool isExpanded;

  APIDTO({
    this.id,
    this.usuario,
    this.titulo,
    this.imgum,
    this.imgdois,
    this.imgtres,
    this.imgquatro,
    this.imgcinco,
    this.paragrafos,
    this.fonteum,
    this.fontedois,
    this.fontetres,
    this.fontequatro,
    this.fontecinco,
    this.video,
    /*Charges*/
    this.img,
    this.fonteDaCharge,
    /*-------*/
    this.isExpanded = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'usuario': usuario,
      'titulo': titulo,
      'imgum': imgum,
      'imgdois': imgdois,
      'imgtres': imgtres,
      'imgquatro': imgquatro,
      'imgcinco': imgcinco,
      'paragrafos': paragrafos,
      'fonteum': fonteum,
      'fontedois': fontedois,
      'fontetres': fontetres,
      'fontequatro': fontequatro,
      'fontecinco': fontecinco,
      'video': video,
      /*Charges*/
      'img': img,
      'fonteDaCharge': fonteDaCharge,
      /*-------*/
    };
  }

  factory APIDTO.fromMap(Map<String, dynamic> map) {
    return APIDTO(
      id: map['id'] ?? '',
      usuario: map['usuario'] ?? '',
      titulo: map['titulo'] ?? '',
      imgum: map['imgum'] ?? '',
      imgdois: map['imgdois'] ?? '',
      imgtres: map['imgtres'] ?? '',
      imgquatro: map['imgquatro'] ?? '',
      imgcinco: map['imgcinco'] ?? '',
      paragrafos: map['paragrafos'] ?? '',
      fonteum: map['fonteum'] ?? '',
      fontedois: map['fontedois'] ?? '',
      fontetres: map['fontetres'] ?? '',
      fontequatro: map['fontequatro'] ?? '',
      fontecinco: map['fontecinco'] ?? '',
      video: map['video'] ?? '',
      /*Charges*/
      img: map['img'] ?? '',
      fonteDaCharge: map['fonteDaCharge'] ?? '',
      /*-------*/
    );
  }

  String toJson() => json.encode(toMap());

  factory APIDTO.fromJson(String source) => APIDTO.fromMap(json.decode(source));
}
