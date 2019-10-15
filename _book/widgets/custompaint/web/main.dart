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
      home: MyHomePage(title: 'CustomPainter Demo'),
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
        //child: Text((-sin((18+1*72-0)/180* pi)* 60 + 120).toString()),
        child: CustomPaint(
          size: Size(360, 240), //指定画布大小
          painter: MyPainter(),
        ),
      )
    ); 
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    //画红旗背景
    var paint = Paint()
      ..isAntiAlias = true //抗锯齿
      ..style = PaintingStyle.fill //填充
      ..color = Color(0xFFDE2910); //背景为红色
    canvas.drawRect(Offset.zero & size, paint);

    //开始画五星
    paint
      ..style = PaintingStyle.fill //线
      ..color = Color(0xFFFFDE00)
      ..strokeWidth = 1.0;
    
    // 五星绘制
    void drawStar(Canvas ctx, double r, double x, double y, double rot){
      Path path = Path();
      path.moveTo(cos((18 - rot)/180 * pi) * r + x, -sin((18 - rot)/180 * pi) * r + y);
      for (var i = 0; i < 5; i ++ ) {
          path.lineTo(cos((18 + i*72 - rot)/180 * pi) * r + x, -sin((18 + i*72 - rot)/180 * pi) * r + y);
          path.lineTo(cos((54 + i*72 - rot)/180 * pi) * r/2.4 + x, -sin((54 + i*72 - rot)/180 * pi) * r/2.4 + y);
      };
      ctx.drawPath(path, paint);
      path.close();
      paint..style = PaintingStyle.fill;
    }

    drawStar(canvas, 30, 60, 60, 0); // 大星星
    List<int> starF = [45, 15, 345, 315]; // 纠正偏移量
    for (int j = 0; j < starF.length; j++){
        double rot = 18.0 + j * 28;
        double x =  cos( starF[j]/180 * pi ) * 80 + 60;
        double y = - sin( starF[j]/180 * pi ) * 60 + 65;
        drawStar(canvas, 60/6, x, y, rot);
    }
  }

  //在实际场景中正确利用此回调可以避免重绘开销，本示例我们简单的返回true
  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}