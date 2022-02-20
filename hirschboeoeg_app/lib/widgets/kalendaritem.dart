import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../classes/termine.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class KalendarItem extends StatelessWidget {
  const KalendarItem({Key? key, required this.actTermin}) : super(key: key);

  final Termin actTermin;

  String currentDate() {
    final DateTime now = DateTime.now();
    final DateFormat formatter = DateFormat('dd.MM.yyyy');
    final String formatted = formatter.format(now);
    return formatted;
  }

  String calcDate(String Datum) {
    //"2022-02-20"
    String right = "";

    right += Datum.substring(8, 10);
    right += ".";
    right += Datum.substring(5, 7);
    right += ".";
    right += Datum.substring(0, 4);

    return right;
  }

  String getDateCorrectly(String datum) {
    String todayFormatted = DateTime.now().toString().substring(0, 10);

    final today =
        DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day)
            .toString()
            .substring(0, 10);
    final tomorrow = DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day + 1)
        .toString()
        .substring(0, 10);

    if (today == datum) {
      return "Heute";
    }
    if (tomorrow == datum) {
      return "Morgen";
    }
    return calcDate(datum);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text(
            getDateCorrectly(actTermin.datum),
          ),
        ),
        title: Text(actTermin.name,
            style: CupertinoTheme.of(context).textTheme.textStyle),
        subtitle: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    actTermin.uhrzeit,
                  ),
                  const Text(" Uhr : "),
                  Text(
                    actTermin.datum,
                  ),
                ],
              ),
              Text(
                actTermin.treffpunkt,
              ),
            ],
          ),
        ),
        trailing: Icon(Icons.info),
      ),
    );
  }
}
