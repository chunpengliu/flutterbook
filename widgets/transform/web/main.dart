import 'package:flutter_web/material.dart';
// import 'package:flutter_web_ui/ui.dart' as web_ui;
import 'dart:math';
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
      home: MyHomePage(title: 'Transform Demo'),
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
      body: Center(
        child:Column(
          children: <Widget>[
            Padding(
              padding:  EdgeInsets.all(30.0)
            ),
            Container(
              color:Colors.red,
              child: Transform.translate(
                offset: Offset(20.0, 5.0),
                child: Text("文字平移"),
              ),
            ),
            Padding(
              padding:  EdgeInsets.all(30.0)
            ),
            Container(
              color: Colors.red,
              child: Transform.rotate(
                //旋转90度
                angle: pi/2,
                child: Text("旋转90度"),
              ),
            ),
            Padding(
              padding:  EdgeInsets.all(30.0)
            ),
            DecoratedBox(
              decoration:BoxDecoration(color: Colors.red),
              child: Transform.scale(
                  scale: 1.5, 
                  child: Text("放大1.5倍")
              )
            ),
            Padding(
              padding:  EdgeInsets.all(30.0)
            ),
            Container(
              color: Colors.blueGrey,
              child: Transform(
                alignment: Alignment.topRight, //相对于坐标系原点的对齐方式
                transform: Matrix4.skewY(0.3), //沿Y轴倾斜0.3弧度
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  color: Colors.red,
                  child: const Text('应用4D矩阵库，实现影子'),
                ),
              ),
            )
          ],
        ) 
      )
    ); 
  }
}
