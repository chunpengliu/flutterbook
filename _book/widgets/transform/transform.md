## Transform

### 描述
A widget that applies a transformation before painting its child.  
实现子组件的平移（translate）旋转（rotate）缩放（scale）效果。也可以通过Matrix4矩阵变换实现复杂的效果。

### 构造函数
```javascript
Transform.translate({
    Key key,
    @required Offset offset,
    this.transformHitTests = true,
    Widget child,
})

Transform.rotate({
    Key key,
    @required double angle,     // 旋转角度
    this.origin,
    this.alignment = Alignment.center,
    this.transformHitTests = true,
    Widget child,
})

Transform.scale({
    Key key,
    @required double scale,     // 缩放比例
    this.origin,    // 缩放原点
    this.alignment = Alignment.center,  // 对齐方式
    this.transformHitTests = true,
    Widget child,
})
```
### 视频介绍
<iframe width="560" height="315" src="https://www.youtube.com/embed/9z_YNlRlWfA" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### 示例  
下面依次应用平移、旋转、缩放效果
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
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
```

点击这里查看 [源码](./web/main.dart)。

