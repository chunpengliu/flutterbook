import 'package:flutter_web/material.dart';
// import 'package:flutter_web_ui/ui.dart' as web_ui;
// import 'dart:math';
import 'package:flutter_web/animation.dart';
//import 'dart: vsync';
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
      home: MyHomePage(title: 'CupertinoFullscreenDialogTransition Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  MyHomePage({Key key, this.title}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<MyHomePage> with SingleTickerProviderStateMixin{
  Animation<double> animation;
  AnimationController controller;
  @override
  void initState() {
    controller = AnimationController(duration: const Duration(seconds: 2), vsync: this);
    animation = Tween<double>(begin: 0.0,end: 1.0,).animate(controller);
    super.initState();
  }
  Future<void> _handleClickMe() async {
    return CupertinoFullscreenDialogTransition(
      child: Scaffold(
          body: Container(
            alignment: Alignment.center,
          child: Text('我是IOS风格的全屏对话框'),
        ),
      ), 
      animation: animation
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body:  Center(
          child: ListView(
            padding: const EdgeInsets.all(20.0),
            children: <Widget>[
              Container(
                height: 50,
                child: FlatButton(
                  onPressed: () {
                    _handleClickMe();
                  },
                  child: Text(
                    "点击显示弹层",
                  ),
                )
              )
            ],
          )
        )
    );
  }
}


