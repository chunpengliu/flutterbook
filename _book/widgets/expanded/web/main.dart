
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
      home: MyHomePage(title: 'Expanded Demo'),
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
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.red,
                height: 100,
                width: 100,
              ),
              Expanded(
                flex:2,
                child: Container(
                  color: Colors.blue,
                  width: 100,
                ),
              ),
              Expanded(
                flex:1,
                child: Container(
                  color: Colors.green,
                  width: 100,
                ),
              ),
            ],
          )
        )
      )
    );
  }
}


