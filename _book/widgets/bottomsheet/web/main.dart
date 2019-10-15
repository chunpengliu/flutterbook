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
      home: MyHomePage(title: 'BottomSheet Demo'),
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
        child: RaisedButton(
          child: const Text('显示 BottomSheet'),
          onPressed: () {
            showModalBottomSheet<void>(context: context, builder: (BuildContext context) {
              return Container(
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Text('这里是bottomsheet内容展示去，下滑关闭',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Theme.of(context).accentColor,
                      fontSize: 24.0,
                    ),
                  ),
                ),
              );
            });
          },
        ),
      ),
    );
  }
}
