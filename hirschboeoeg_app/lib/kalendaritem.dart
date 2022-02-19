import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KalendarItem extends StatelessWidget {
  const KalendarItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Padding(
          padding: EdgeInsets.all(10.0),
          child: Icon(
            Icons.push_pin_rounded,
            size: 30,
          ),
        ),
        title: Text('Narrenbaumstellen'),
        subtitle: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Am 19.03.2002",
              ),
              Text(
                "Treffpunk 10.20 Bahnhof",
              ),
            ],
          ),
        ),
        trailing: Icon(Icons.pin),
      ),
    );
  }
}
