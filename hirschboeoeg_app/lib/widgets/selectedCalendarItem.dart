import 'package:boeoeg_app/classes/termine.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectedCalendarItem extends StatefulWidget {
  const SelectedCalendarItem({Key? key}) : super(key: key);
  static const routeName = '/selectedCalendarItem';

  @override
  State<SelectedCalendarItem> createState() => _SelectedCalendarItemState();
}

class _SelectedCalendarItemState extends State<SelectedCalendarItem> {
  bool initvalue = false;
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Termin;
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(args.name),
      ),
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(args.adresse),
          Text(args.datum),
          Text(args.kleidung),
          Text(args.notizen),
          Text(args.treffpunkt),
          Row(
            children: [
              Text("Nehme ich teil ?"),
              CupertinoSwitch(
                  value: initvalue,
                  onChanged: (value) => {
                        setState(() {
                          initvalue = value;
                        })
                      }),
            ],
          ),
          Text("Liste allter Teilnahmen")
        ]),
      ),
    );
  }
}
