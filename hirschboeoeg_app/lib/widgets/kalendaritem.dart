import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../classes/termine.dart';

class KalendarItem extends StatelessWidget {
  const KalendarItem({Key? key, required this.actTermin}) : super(key: key);

  final Termin actTermin;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text(
            actTermin.datum,
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
