import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart';

class Termin {
  final int id;
  final String name;
  final String datum;
  final String adresse;
  final String uhrzeit;
  final String notizen;
  final String treffpunkt;
  final String kleidung;

  Termin(
      {required this.id,
      required this.name,
      required this.datum,
      required this.adresse,
      required this.uhrzeit,
      required this.notizen,
      required this.treffpunkt,
      required this.kleidung});
}

class Termine with ChangeNotifier {
  List<Termin> _termine = [];

  List<Termin> get orders {
    return [..._termine];
  }

  void addTermin(Termin termin) {
    _termine.insert(0, termin);
    notifyListeners();
  }
}
//{"id":1,"name":"Narrenbaumstellen","datum":"19.03.2002","adresse":"Grenzach Chinese","uhrzeit":12,"notizen":"jaldhaw","treffpunkt":"12 Da","kleidung":"HÃ¤Ã¤s mit Maske"}
