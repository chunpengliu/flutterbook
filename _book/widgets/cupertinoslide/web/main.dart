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
      home: MyHomePage(title: 'CupertinoSlider Demo'),
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
  double sliderVl = 20.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body:  Center(
        child: CupertinoSlider(
          value: sliderVl,
          min: 0.0,
          max: 100.0,
          onChanged: (value){
            setState(() {
              sliderVl = value.roundToDouble();
            });
          },
        ),
      )
    );
  }
}


