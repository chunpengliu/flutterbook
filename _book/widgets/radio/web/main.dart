import 'package:flutter_web/material.dart';
// import 'package:flutter_web_ui/ui.dart' as web_ui;
// import 'dart:math';

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
      home: MyHomePage(title: 'Radio Demo'),
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
  String radioGroupVl = '1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: Center(
          child: Column(children: <Widget>[
            ListTile(
              title: const Text('北京'),
              leading: Radio(
                value: '1',
                groupValue: radioGroupVl,
                onChanged: (String value) {
                  setState(() {
                    radioGroupVl = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('上海'),
              leading: Radio(
                value: '2',
                groupValue: radioGroupVl,
                onChanged: (String value) {
                  setState(() {
                    radioGroupVl = value;
                  });
                },
              ),
            ),
            Text('你选中的值为${ radioGroupVl }')
          ]
        )
      )
    );
  }
}
