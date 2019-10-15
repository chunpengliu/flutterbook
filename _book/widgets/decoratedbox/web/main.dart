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
      home: MyHomePage(title: 'DecoratedBox Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  MyHomePage({Key key, this.title}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Container(
        child: DecoratedBox(
            decoration: BoxDecoration(
                color: Color(0x6600ff00), //半透明效果
                border: Border.all(
                    color: Color(0xff0000ff)
                ),
                borderRadius: BorderRadius.circular(10.0),
            ),
            position: DecorationPosition.foreground, //前景装饰
            // position: DecorationPosition.background,
            child: Container(
              padding: EdgeInsets.all(50.0),
              child: Container(
                width: 200.0,
                height: 200.0,
                color: Colors.red,
              ),
            ),
          )
      )
    ); 
  }
}
