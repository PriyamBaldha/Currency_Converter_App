import 'package:currency_convertor/pages/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'global.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return (Global.isAndroid == false)
        ? const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: HomePage(),
          )
        : const CupertinoApp(
            debugShowCheckedModeBanner: false,
            home: HomePage(),
          );
  }
}
