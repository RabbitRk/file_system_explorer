import 'dart:io';

import 'package:file_system_explorer/src/file_system_explorer_new.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart'
    show debugDefaultTargetPlatformOverride;

void main() {
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
          primarySwatch: Colors.blue,
          iconTheme: IconThemeData(
            color: Color(0xffbbbbbb),
          ),
          brightness: Brightness.light,
          textTheme: TextTheme(
            bodyLarge: TextStyle(color: Color(0xffbbbbbb)),
          )),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return FileSystemExplorer(
      onPathSelected: (_) {},
      onPathChanged: (FileSystemEntity value) {}, rootDirectory: Directory(""),
    );
  }
}
