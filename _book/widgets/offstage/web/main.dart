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
      home: MyHomePage(title: 'Offstage Demo'),
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
  bool offstage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          children: <Widget>[
            Offstage(
              offstage: offstage,
              child: Container(color: Colors.blue, height: 100.0),
            ),
            FlatButton(
              child: Text("点击切换显示"),
              onPressed: () {
                setState(() {
                  offstage = !offstage;
                });
              },
            ),
          ],
        )
      ),
    );
  }
}
