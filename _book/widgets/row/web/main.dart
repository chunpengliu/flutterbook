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
      home: MyHomePage(title: 'Row Demo'),
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
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                color: Colors.red,
                padding: EdgeInsets.all(5.0),
              ),
              flex: 1,
            ),
            Expanded(
              child: Container(
                color: Colors.yellow,
                padding: EdgeInsets.all(5.0),
              ),
              flex: 2,
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
                padding: EdgeInsets.all(5.0),
              ),
              flex: 1,
            ),
          ],
        )
      )
    );
  }
}

