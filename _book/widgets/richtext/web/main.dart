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
      home: MyHomePage(title: 'RichText Demo'),
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
            child: RichText(
          text: TextSpan(
            text: '这是 ',
            style: TextStyle(color: Colors.black, fontSize: 18.0),
            children: <TextSpan>[
              TextSpan(
                  text: '加粗 ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              TextSpan(text: '文本。'),
              TextSpan(
                text: '这是',
              ),
              TextSpan(text: '加大', style: TextStyle(fontSize: 22.0)),
              TextSpan(
                text: '文本',
              ),
              TextSpan(
                text: '这是',
              ),
              TextSpan(text: '红色 ', style: TextStyle(color: Colors.red)),
              TextSpan(
                text: '字。',
              ),
            ],
          ),
        )
      )
    );
  }
}
