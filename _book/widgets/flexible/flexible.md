## Flexible

### 描述
A widget that controls how a child of a Row, Column, or Flex flexes.  
Flexible组件可以使Row、Column、Flex等子组件在主轴方向有填充可用空间的能力，但是不强制子组件填充可用空间。

### 对齐方式
```javascript
Flexible({
    Key key,
    int flex = 1,//组件占据剩余空间的比例。如果未指定，则按1处理
    this.fit: FlexFit.loose,
    @required Widget child,
})   
```
### 视频介绍
<iframe width="560" height="315" src="https://www.youtube.com/embed/CI7x0mAZiY0" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### 示例  
红色的框、蓝色的框、绿色的框占据剩下的空间高度，比例为3:1:1
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Column(
        children: <Widget>[
          Flexible(
            flex: 3,
            child: Container(
              color: Colors.red,
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              color: Colors.blue,
            ),
          ),
          Flexible(
            hei
            child: Container(
              color: Colors.green,
            ),
          ),
        ],
      )
    );
  }
}
```

点击这里查看 [源码](./web/main.dart)。

