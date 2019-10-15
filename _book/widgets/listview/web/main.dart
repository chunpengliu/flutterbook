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
      home: MyHomePage(title: 'ListView Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  MyHomePage({Key key, this.title}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _HomeState();
}

Widget listView = ListView(
  padding: const EdgeInsets.all(8.0),
  children: <Widget>[
    Container(
      height: 50,
      color: Colors.amber[600],
      child: const Center(child: Text('item1')),
    ),
    Container(
      height: 50,
      color: Colors.amber[500],
      child: const Center(child: Text('item2')),
    ),
    Container(
      height: 50,
      color: Colors.amber[100],
      child: const Center(child: Text('item3')),
    ),
  ],
);
Widget listViewBuilder = ListView.builder(
  itemCount: 1000,
  itemBuilder: (context, index) {
    return ListTile(
      title: Text("第${index}行"),
    );
  },
);

class _HomeState extends State<MyHomePage>{
  bool listStatus = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Container(
        child: listStatus ? listViewBuilder:listView 
      ),
      floatingActionButton: FlatButton(
        onPressed: () {
          setState(() {
            listStatus = !listStatus;
          });
        },
        child: Text('列表切换')
      ),

    );
  }
}

