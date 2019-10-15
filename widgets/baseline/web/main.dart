import 'package:flutter_web/material.dart';
import 'dart:math';
// import 'package:flutter_web_ui/ui.dart' as web_ui;

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
      home: MyHomePage(title: 'FittedBox Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  MyHomePage({Key key, this.title}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
             Baseline(
              baseline: 50.0,
              baselineType: TextBaseline.alphabetic,
              child: Text(
                '20号字体',
                style: TextStyle(
                  fontSize: 20.0,
                  textBaseline: TextBaseline.alphabetic,
                ),
              ),
            ),
             Baseline(
              baseline: 50.0,
              baselineType: TextBaseline.alphabetic,
              child: Container(
                width: 30.0,
                height: 30.0,
                color: Colors.red,
              ),
            ),
           Baseline(
              baseline: 50.0,
              baselineType: TextBaseline.alphabetic,
              child:  Text(
                '40号字体',
                style:  TextStyle(
                  fontSize: 40.0,
                  textBaseline: TextBaseline.alphabetic,
                ),
              ),
            ),
          ],
        )));
  }
}
