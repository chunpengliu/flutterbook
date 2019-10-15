## Expanded

### 描述
A widget that expands a child of a Row, Column, or Flex so that the child fills the available space.  
Expanded组件可以使Row、Column、Flex等子组件在其主轴方向上展开并填充可用空间，是强制子组件填充可用空间。

### 构造函数
```javascript
Expanded({
    Key key,
    int flex = 1,//组件占据剩余空间的比例。如果未指定，则全部占据
    @required Widget child,
})   
```
### 视频介绍
<iframe width="560" height="315" src="https://www.youtube.com/embed/_rnZaagadyo" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### 示例  
蓝色的框和红色的框占据剩下的空间高度，比例为2:1
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.red,
                height: 100,
                width: 100,
              ),
              Expanded(
                flex:2,
                child: Container(
                  color: Colors.blue,
                  width: 100,
                ),
              ),
              Expanded(
                flex:1,
                child: Container(
                  color: Colors.green,
                  width: 100,
                ),
              ),
            ],
          )
        )
      )
    );
  }
}
```

点击这里查看 [源码](./web/main.dart)。

