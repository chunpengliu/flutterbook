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
      home: MyHomePage(title: 'PopupMenuButton Demo'),
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
  String _selection;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
               Center(
                child: PopupMenuButton<String>(
                  onSelected: (String result) { setState(() { _selection = result; }); },
                  itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                    const PopupMenuItem<String>(
                      value: '1',
                      child: Text('选项1'),
                    ),
                    const PopupMenuItem<String>(
                      value: '2',
                      child: Text('选项2'),
                    ),
                    const PopupMenuItem<String>(
                      value: '3',
                      child: Text('选项3'),
                    )
                  ],
                )
              ),
              Text(_selection == null ? '' : "你选择了${_selection}")
        ],
      )
      
 
    );
  }
}
