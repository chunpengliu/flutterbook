import 'package:flutter_web/material.dart';
// import 'package:flutter_web_ui/ui.dart' as web_ui;
// import 'dart:math';
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
      home: MyHomePage(title: 'CupertinoAlertDialog Demo'),
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

  String selectedVl = '';
  Future<void> _handleClickMe() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text('我是标题'),
          content: Text('这里是内容，是否确定执行操作？'),
          actions: <Widget>[
            CupertinoDialogAction(
              child: Text('否'),
              onPressed: () {
                setState(() {
                  selectedVl = '否';
                });
                Navigator.of(context).pop();
              },
            ),
            CupertinoDialogAction(
              child: Text('是'),
              onPressed: () {
                setState(() {
                  selectedVl = '是';
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
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
              ),
              Padding(
                padding: EdgeInsets.all(8.0)
              ), 
              Container(
                child: Text((selectedVl.isNotEmpty )?  '你选中了"${selectedVl}"' : '')
              ),
            ],
          )
        )
    );
  }
}


