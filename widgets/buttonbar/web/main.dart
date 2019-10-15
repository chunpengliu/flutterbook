import 'package:flutter_web/material.dart';
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
      home: MyHomePage(title: 'ButtonBar Demo'),
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
      body: Center(
        child: ButtonBar(
          alignment : MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text('按钮1'),
              color: Colors.blue,
              onPressed: () {/** */},
            ),
            FlatButton(
              child: Text('按钮2'),
              color: Colors.blue,
              onPressed: () {/** */},
            ),
          ],
        )
      )
    );
  }
}
