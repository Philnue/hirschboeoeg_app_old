import 'package:boeoeg_app/MyHomePage.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  static const String _title = 'Böög App';

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  Brightness? _brightness;

  @override
  void initState() {
    WidgetsBinding.instance?.addObserver(this);
    _brightness = WidgetsBinding.instance?.window.platformBrightness;
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance?.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangePlatformBrightness() {
    if (mounted) {
      setState(() {
        _brightness = WidgetsBinding.instance?.window.platformBrightness;
      });
    }

    super.didChangePlatformBrightness();
  }

  CupertinoThemeData get _lightTheme => const CupertinoThemeData(
        brightness: Brightness.light,
        primaryColor: CupertinoColors.black,
      );

  CupertinoThemeData get _darkTheme => const CupertinoThemeData(
        brightness: Brightness.dark,
        primaryColor: CupertinoColors.white,
      );

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: MyApp._title,
      theme: _brightness == Brightness.dark ? _darkTheme : _lightTheme,
      home: const MyHomePage(),
    );
  }
}
