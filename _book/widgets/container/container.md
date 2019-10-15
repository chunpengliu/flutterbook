## Container

### 描述
A convenience widget that combines common painting, positioning, and sizing widgets.  
一个组合的widget，内部可以绘制widget、设置widget的定位以及尺寸。

### 构造函数
```javascript
Container({
    Key key,
    this.alignment,
    this.padding,
    Color color,
    Decoration decoration,
    this.foregroundDecoration,
    double width,
    double height,
    BoxConstraints constraints,
    this.margin,
    this.transform,
    this.child,
  })
```
### 视频介绍
<iframe width="560" height="315" src="https://www.youtube.com/embed/c1xLMaTUWCY" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### 示例  
正方形容器
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: Center(
          child: Container(
            margin: const EdgeInsets.all(10.0),
            color: Colors.amber[600],
            width: 48.0,
            height: 48.0,
          ),
        ));
  }
}
```

点击这里查看 [源码](./web/main.dart)。

