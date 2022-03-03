import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class HiveHelper {
  late Box<dynamic> _box;
  late Directory _libraryDirectory;

  HiveHelper() {
    //loadHive();
  }

  void loadHive() async {
    _libraryDirectory = await getLibraryDirectory();

    print(_libraryDirectory);
    var t = Hive.init(_libraryDirectory.path);
    _box = await Hive.openBox('testBox');
  }

  String loadDataString(String key) {
    print("load");
    return _box.get(key);
  }

  void saveDataString(String key, String value) {
    print("get");
    _box.put(key, value);
  }
}


//Directory test = await getLibraryDirectory();

//    var m = Hive.init(test.path);
//    var box = await Hive.openBox('testBox');

//    box.put('name', 'NichtPhilipp');

    //print('Name: ${box.get('name')}');