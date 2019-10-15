## CustomPaint

### 描述
A widget that provides a canvas on which to draw during the paint phase.  
提供一个画布的widget，在绘制阶段可以在画布上绘制自定义图形。

### 构造函数
```javascript
CustomPaint({
  Key key,
  this.painter, 
  this.foregroundPainter,
  this.size = Size.zero, 
  this.isComplex = false, 
  this.willChange = false, 
  Widget child, //子节点，可以为空
})
painter: 背景画笔，会显示在子节点后面;
foregroundPainter: 前景画笔，会显示在子节点前面
size：当child为null时，代表默认绘制区域大小，如果有child则忽略此参数，画布尺寸则为child尺寸。如果有child但是想指定画布为特定大小，可以使用SizeBox包裹CustomPaint实现。
isComplex：是否复杂的绘制，如果是，Flutter会应用一些缓存策略来减少重复渲染的开销。
willChange：和isComplex配合使用，当启用缓存时，该属性代表在下一帧中绘制是否会改变。
```
### 视频介绍
<iframe width="560" height="315" src="https://www.youtube.com/embed/kp14Y4uHpHs" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### 示例

绘制五星红旗
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
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
```

点击这里查看 [源码](./web/main.dart)。

