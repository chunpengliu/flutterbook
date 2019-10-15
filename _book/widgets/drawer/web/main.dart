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
      home: MyHomePage(title: 'Drawer Demo'),
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
      drawer: Drawer(
        child:Container(
          alignment: Alignment.center,
          child: Text('我是Drawer',style: TextStyle(fontSize: 30),),
        )
      ),
      body:  Center(
          child: ListView(
            padding: const EdgeInsets.all(8.0),
            children: <Widget>[
              Container(
                height: 50,
                child: const Center(child: Text('1、侧滑弹出')),
              ),
              Container(
                height: 50,
                color: Colors.amber[500],
                child: Builder(
                  builder: (context){
                    return RaisedButton(
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      child: Text("点击弹出")
                    );
                }),
              ),
            ],
          )
        )
      
    );
  }
}
