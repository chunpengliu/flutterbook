## GestureDetector

### 描述
A widget that detects gestures.  
检测手势的widget。如果GestureDetector 的child属性不空，GestureDetector将自己大小设置为child的大小。如果child属性为空，它将自己的大小设置为父组件的大小。

### 构造函数
```javascript
GestureDetector({
    Key key,
    this.child,
    this.onTapDown,//可能导致点击的指针已联系到屏幕的特定位置
    this.onTapUp,//触发点的指针已停止在特定位置与屏幕联系
    this.onTap,//发生了点击。
    this.onTapCancel,//触发onTapDown的指针取消触发
    this.onDoubleTap,//双击
    this.onLongPress,//长按
    this.onLongPressUp,//长按结束
    this.onVerticalDragDown,//
    this.onVerticalDragStart,//指针已经接触到屏幕，而且可能开始垂直移动。
    this.onVerticalDragUpdate,//与屏幕接触并垂直移动的指针沿垂直方向移动
    this.onVerticalDragEnd,//以前与屏幕接触并垂直移动的指针不再与屏幕接触，并且当其停止接触屏幕时以特定速度移动。
    this.onVerticalDragCancel,//
    this.onHorizontalDragDown,//
    this.onHorizontalDragStart,//
    this.onHorizontalDragUpdate,//
    this.onHorizontalDragEnd,//
    this.onHorizontalDragCancel,//

//    onPan可以取代onVerticalDrag或者onHorizontalDrag，三者不能并存
    this.onPanDown,//指针已经接触屏幕并开始移动
    this.onPanStart,//与屏幕接触并移动的指针再次移动
    this.onPanUpdate,//先前与屏幕接触并移动的指针不再与屏幕接触，并且当它停止接触屏幕时以特定速度移动
    this.onPanEnd,//先前触发 onPanDown 的指针未完成
    this.onPanCancel,//

//    onScale可以取代onVerticalDrag或者onHorizontalDrag，三者不能并存，不能与onPan并存
    this.onScaleStart,//
    this.onScaleUpdate,//
    this.onScaleEnd,//
    this.behavior,
    this.excludeFromSemantics = false
})
```


### 示例  
为文本添加点击事件
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage> {
  int num = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                setState(() { num ++; });
              },
              child: Container(
                child: Text('点击此处文本'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child:Text('你点击了${num}次')
            )
          ]
        )
      )
    );
  }
}
```

点击这里查看 [源码](./web/main.dart)。

