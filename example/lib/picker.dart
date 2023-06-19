import 'package:file_system_explorer/file_system_explorer.dart';
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
          textTheme: TextTheme(
            bodyLarge: TextStyle(color: Color(0xffbbbbbb)),
          )
      ),
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

  String path = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(path?? "-"),
            ElevatedButton(
              onPressed: () async {
                path = await showPicker(context, topInfo: Text("Choose a file to show"),
                  searchFor: FlutterFileType.Folder

                );
                setState((){});
              },
              child: Text("Select a file"),
            ),
          ],
        ),
      ),
    );
  }
}
