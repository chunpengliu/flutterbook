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
      home: MyHomePage(title: 'RadioListTile Demo'),
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
        child: Column(
          children: <Widget>[
            RadioListTile(
              title: const Text('北京'),
              value: '1',
              groupValue: radioGroupVl,
              onChanged: ( value) { setState(() { radioGroupVl = value; }); },
            ),
            RadioListTile(
              title: const Text('上海'),
              value: '2',
              groupValue: radioGroupVl,
              onChanged: ( value) { setState(() { radioGroupVl = value; }); },
            ),
            Text('你选中的值是${radioGroupVl}')
          ],
        )
      )
    );
  }
}
