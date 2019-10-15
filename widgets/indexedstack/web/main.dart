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
      home: MyHomePage(title: 'IndexedStack Demo'),
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
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: IndexedStack(
        index: _index,
        alignment: Alignment.center,
        children: <Widget>[
          Text("第一层"),
          Container(
            width: 100.0,
            height: 100.0,
            color: Colors.blue,
            child:Text('第二层')
          ),
          Text("第三层"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
              setState(() {
                _index ++;
                if (_index > 2) {
                  _index = 0;
                }
              });
          },
          child: Icon(Icons.add),
        ),
    );
  }
}
