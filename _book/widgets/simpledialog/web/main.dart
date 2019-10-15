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
      home: MyHomePage(title: 'showDialog Demo'),
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
  Map selected = {
    "1": "选项1",
    "2": "选项2",
  };
  String selectedkey = '0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlatButton(
                    onPressed: () async {
                      String r = await openDialog(context);
                      setState(() {
                        selectedkey = r;
                      });
                      print(r);
                    },
                    child: Text(
                      '显示弹层',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                    ),
                    color: Colors.blue,
                  ),
                  Text(selectedkey == '0' ? '' : '你点击了"${selected[selectedkey]}"按钮！')
                ]
              )
            )
        )
      );
  }

  Future openDialog(BuildContext context) async {
    return await showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
        title: const Text('请选择正确的答案？'),
        children: <Widget>[
          SimpleDialogOption(
            onPressed: () { Navigator.pop(context, '1'); },
            child: const Text('选项1'),
          ),
          SimpleDialogOption(
            onPressed: () { Navigator.pop(context, '2'); },
            child: const Text('选项2'),
          ),
        ],
      );
      }
    );
  }
}


