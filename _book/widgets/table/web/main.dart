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
      home: MyHomePage(title: 'Table Demo'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Container(
        child: Table(
          columnWidths: const <int, TableColumnWidth>{
            0: FixedColumnWidth(50.0),
            1: FixedColumnWidth(100.0),
            2: FixedColumnWidth(50.0),
          },
          border: TableBorder.all(color: Colors.black, width: 1.0, style: BorderStyle.solid),
          children: const <TableRow>[
            TableRow(
              children: <Widget>[
                Text('表头A'), Text('表头B'), Text('表头C'),
              ],
            ),
            TableRow(
              children: <Widget>[
                Text('A2'), Text('B2'), FlutterLogo(),
              ],
            ),
            TableRow(
              children: <Widget>[
                Text('A3'), Text('B3'), Text('C3'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
