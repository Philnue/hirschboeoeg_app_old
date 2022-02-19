import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AemterWidget extends StatefulWidget {
  const AemterWidget({Key? key}) : super(key: key);

  @override
  State<AemterWidget> createState() => _AemterWidgetState();
}

class _AemterWidgetState extends State<AemterWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Column(
          children: [
            CupertinoSwitch(value: true, onChanged: (bool) => {}),
            Text("Ämter"),
            Text(
              "Alpha",
              style: TextStyle(color: CupertinoColors.activeBlue),
            ),
            Text(
              "Beta",
              style: TextStyle(color: CupertinoColors.activeBlue),
            ),
            Text(
              "Schreiber",
              style: TextStyle(color: CupertinoColors.activeBlue),
            ),
            Text(
              "Finanzen",
              style: TextStyle(color: CupertinoColors.activeBlue),
            ),
            Text(
              "Keine Ahnung wie das letzte",
              style: TextStyle(color: CupertinoColors.activeBlue),
            ),
          ],
        ),
        Column(children: [
          Text("Mitglieder"),
        ])
      ],
    ));
  }
}
