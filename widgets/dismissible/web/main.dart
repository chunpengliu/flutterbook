
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
      home: MyHomePage(title: 'Dismissible Demo'),
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
  List list = ['1','2','3','4'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          var item = list[index];
          return Dismissible(
            key: Key(item),
            child: ListTile(
              title: Text('第${item}行，滑动可以删除', ),
            ),
            onDismissed: (direction) {
              list.remove(index);
              print(direction);
            },
            background: Container(
              color: Colors.red,
              child: Center(
                child: Text("右划",
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
              )
            ),
            secondaryBackground: Container(
              color: Colors.green,
              child: Center(
                child: Text("左划",
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
              )
            ),
          );
        },
      )
    );
  }
}


