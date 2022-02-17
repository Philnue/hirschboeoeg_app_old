import 'package:boeoeg_app/kalendaritem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_calendar/cupertino_calendar.dart';

class KalendarClass extends StatefulWidget {
  const KalendarClass({Key? key}) : super(key: key);

  @override
  _KalendarClassState createState() => _KalendarClassState();
}

class _KalendarClassState extends State<KalendarClass> {
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
          children: [KalendarItem(), KalendarItem(), KalendarItem()],
        )),
      ),
    );
  }
}
