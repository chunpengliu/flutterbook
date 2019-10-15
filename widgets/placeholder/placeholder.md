## Placeholder

### 描述
A widget that draws a box that represents where other widgets will one day be added.  
一个绘制了一个盒子的的widget，代表日后有widget将会被添加到该盒子中。

### 构造函数
```javascript
  Placeholder({
    Key key,
    this.color = const Color(0xFF455A64), // 设置占位符颜色 defalutBlue Grey 700 
    this.strokeWidth = 2.0,//设置画笔宽度
    this.fallbackWidth = 400.0,//设置占位符宽度
    this.fallbackHeight = 400.0,//设置占位符高度
  })
```
### 视频介绍
<iframe width="560" height="315" src="https://www.youtube.com/embed/LPe56fezmoo" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### 示例  
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
          width: 200,
          height: 200,
          color: Colors.white,
          child: Placeholder(
            color: Colors.blue[50],
          ),
        )
      )
    );
  }
}
```

点击这里查看 [源码](./web/main.dart)。

