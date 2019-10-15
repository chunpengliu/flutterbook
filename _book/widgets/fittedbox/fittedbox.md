## FittedBox

### 描述
Scales and positions its child within itself according to fit.  
按自己的大小调整其子widget的大小和位置。
它主要做了两件事情，缩放（Scale）以及位置调整（Position）。FittedBox会在自己的尺寸范围内缩放并且调整child位置，使得child适合其尺寸。

### 构造函数
```javascript
const FittedBox({
	Key key,
	this.fit: BoxFit.contain,
	this.alignment: Alignment.center,
	Widget child,
})
```
### 视频介绍
<iframe width="560" height="315" src="https://www.youtube.com/embed/T4Uehk3_wlY" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### 示例  
文本会按contain充满父widget
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Container(
          color: Colors.blue,
          width: 300.0,
          height: 300.0,
          child: FittedBox(
            fit: BoxFit.contain,
            alignment: Alignment.topLeft,
            child: Container(
              color: Colors.red,
              child: Text("FittedBox"),
            ),
          ),
        )
      )
    );
  }
}
```
### 使用场景
对于需要缩放调整位置处理的，一般都是图片。一般都是使用Container中的decoration属性去实现相应的效果。对于其他控件需要缩放以及调整位置的，目前还没有遇到使用场景，大家只需要知道有这么一个控件，可以实现这个功能即可。

点击这里查看 [源码](./web/main.dart)。

