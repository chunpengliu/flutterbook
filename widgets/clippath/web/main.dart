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
      home: MyHomePage(title: 'ClipOval Demo'),
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
  final String _imageUrl =
      'https://inews.gtimg.com/newsapp_bt/0/10190343486/1000';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ClipPath(
      //剪切区域
      child: SizedBox(
        width: 640,
        height: 480,
        child: Image.network(_imageUrl, fit: BoxFit.cover,),
      ),
      clipper: HeaderColor(), //主要部分
    ));
  }
}

class HeaderColor extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    //x坐标为0.0 y坐标为手机高度一半
    //到x坐标为手机宽度 到 手机宽度的一半减去100 达到斜线的结果
    //到x坐标为手机宽度 到 y坐标为手机宽度
    //完成
    var path = Path()
      ..lineTo(0.0, size.height / 2)
      ..lineTo(size.width, size.height / 2 - 100)
      ..lineTo(size.width, 0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
