import 'package:boeoeg_app/widgets/aemter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'classes/termine.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        resizeToAvoidBottomInset: true,
        navigationBar: CupertinoNavigationBar(
          middle: const Text("Info Seite"),
          border: Border(
            bottom: BorderSide(
              color: Theme.of(context).dividerColor,
            ),
          ),
        ),
        child: ListView(
          children: [
            Text("data"),
            Text("test"),
            Text("data"),
            Text("test"),
            Text("data"),
            Text("test"),
            Text("data"),
            Text("test"),
          ],
        ));
  }
}
