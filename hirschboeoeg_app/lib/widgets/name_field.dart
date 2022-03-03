import 'package:boeoeg_app/helper/hive.dart';
import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class NamefieldWidget extends StatefulWidget {
  const NamefieldWidget({Key? key}) : super(key: key);

  @override
  _NamefieldWidgetState createState() => _NamefieldWidgetState();
}

class _NamefieldWidgetState extends State<NamefieldWidget> {
  late TextEditingController _textController;
  late String _currentName;
  loadPrefs() async {
    //Directory test = await getLibraryDirectory();

    //var m = Hive.init(test.path);
    //var box = await Hive.openBox('testBox');

    //box.put('name', 'NichtPhilipp');

    //print('Name: ${box.get('name')}');

    var m = HiveHelper();
    m.loadHive();
    m.saveDataString("name", "default");
    print(m.loadDataString("name"));
  }

  @override
  void initState() {
    super.initState();
    loadPrefs();
    _textController = TextEditingController(text: 'initial text');
  }

  void setNameToHive(String name) {}

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      controller: _textController,
      keyboardType: TextInputType.text,
      onSubmitted: (value) {
        setState(() {
          print(_textController.text);
          _textController.text = value;
        });
      },
      prefix: Icon(CupertinoIcons.person),
    );
  }
}
