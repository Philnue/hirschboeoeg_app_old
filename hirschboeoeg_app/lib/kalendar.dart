import 'package:boeoeg_app/kalendaritem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_calendar/cupertino_calendar.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'classes/termin.dart';

class KalendarClass extends StatefulWidget {
  const KalendarClass({Key? key}) : super(key: key);

  @override
  _KalendarClassState createState() => _KalendarClassState();
}

class _KalendarClassState extends State<KalendarClass> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  void transferdata(List<dynamic> list) {
    for (var item in list) {
      var mm = item;
    }
  }

  Future<void> loadData() async {
    String dataURL = "http://127.0.0.1:8000/loadalltermine/";

    http.Response response = await http.get(dataURL);
    var data = jsonDecode(response.body);
    transferdata(data);
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text("Kalender"),
        border: Border(
            bottom: BorderSide(
          color: Theme.of(context).dividerColor,
        )),
      ),
      child: Center(
        child: (ListView(
          children: [KalendarItem(), KalendarItem(), KalendarItem(), Text("")],
        )),
      ),
    );
  }
}
