## Opacity

### 描述
A widget that makes its child partially transparent.  
设置子组件的（半）透明效果

### 构造函数
```javascript
const Opacity({
    Key key,
    @required this.opacity,//透明度，0.0 到 1.0，0.0表示完全透明，1.0表示完全不透明
    this.alwaysIncludeSemantics = false,
    Widget child,
})
```
### 视频介绍
<iframe width="560" height="315" src="https://www.youtube.com/embed/9hltevOHQBw" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### 示例  
蓝框半透明，透露出底层的文字
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Stack(
        children: [
          Text('我是半透明下的文字'),
          Opacity(
          opacity: 0.5,
          child: Container(
            width: 100.0,
            height: 100.0,
            color: Colors.blue,
          ),
        )]
      )
    ); 
  }
}
```

点击这里查看 [源码](./web/main.dart)。

