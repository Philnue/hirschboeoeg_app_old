import 'package:boeoeg_app/info.dart';
import 'package:boeoeg_app/kalendar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:hive/hive.dart';
import 'package:archive/archive.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Böög App';

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: _title,
      theme: CupertinoThemeData(
        primaryColor: Colors.black,
        textTheme: CupertinoTextThemeData(
          textStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  void initState() {
    super.initState();

    loadPrefs();

    //var brightness = SchedulerBinding.instance!.window.platformBrightness;
    //bool isDarkMode = brightness == Brightness.dark;
  }

  loadPrefs() async {
    var path = Directory.current.path;
    Directory tempDir = await getTemporaryDirectory();
    String tempPath = tempDir.path;
    print(tempPath);

    Directory test = await getLibraryDirectory();
    Directory test1 = await getApplicationSupportDirectory();
    Directory test2 = await getLibraryDirectory();
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String appDocPath = appDocDir.path;
    print(appDocPath);
    var m = Hive.init(test.path);
    var box = await Hive.openBox('testBox');

    box.put('name', 'Test');

    print('Name: ${box.get('name')}');
  }

  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.calendar),
            label: 'Kalendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.check_mark),
            label: 'Abstimmung',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.settings),
            label: 'Einstellungen/Vorschläge',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.settings),
            label: 'Info',
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        switch (index) {
          case 0:
            return KalendarClass();
          case 1:
            break;
          case 2:
            break;
          case 3:
            return InfoPage();
          default:
            break;
        }
        return Text("");
      },
    );
  }
}
