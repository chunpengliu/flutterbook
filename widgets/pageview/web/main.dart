import 'package:flutter_web/material.dart';
// import 'package:flutter_web_ui/ui.dart' as web_ui;
// import 'dart:math';
// import 'package:flutter_web/animation.dart';
// import 'dart: async';
import 'package:flutter_web/cupertino.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'PageView Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  MyHomePage({Key key, this.title}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: PageView(
        children: <Widget>[
          Container(
            color: Colors.red,
            child: Center(
              child: Text('第一页'),
            ),
          ),
          Container(
            color: Colors.blue,
            child: Center(
              child: Text('第二页'),
            ),
          ),
          Container(
            color: Colors.green,
            child: Center(
              child: Text('第三页'),
            ),
          ),
        ],
      )
    );
  }
}


