## SingleChildScrollView

### 描述
A box in which a single widget can be scrolled.  
一个可以滚动单个widget的框

### 构造函数
```javascript
const SingleChildScrollView({
    Key key,
    this.scrollDirection = Axis.vertical,
    this.reverse = false,
    this.padding,
    bool primary,
    this.physics,
    this.controller,
    this.child,
    this.dragStartBehavior = DragStartBehavior.down,
}
key：当前元素的唯一标识符(类似于 Android 中的 id)
 scrollDirection：滚动方向，默认是垂直
 reverse：是否按照阅读方向相反的方向滑动。
 padding：填充距离
 primary：是否使用 widget 树中默认的 PrimaryScrollController 。当滑动方向为垂直方向（scrollDirection值为Axis.vertical）并且controller没有指定时，primary默认为true
 physics：此属性接受一个ScrollPhysics对象，它决定可滚动Widget如何响应用户操作，比如用户滑动完抬起手指后，继续执行动画；或者滑动到边界时，如何显示。默认情况下，Flutter会根据具体平台分别使用不同的ScrollPhysics对象，应用不同的显示效果，如当滑动到边界时，继续拖动的话，在iOS上会出现弹性效果，而在Android上会出现微光效果。如果你想在所有平台下使用同一种效果，可以显式指定，Flutter SDK中包含了两个ScrollPhysics的子类可以直接使用：
 ClampingScrollPhysics→Android下微光效果 / BouncingScrollPhysics→iOS下弹性效果
 controller：此属性接受一个ScrollController对象。ScrollController的主要作用是控制滚动位置和监听滚动事件
 child：子元素
```


### 示例  
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage>{
  String info = "这是一串用来测试的文本信息，用于后面进行字符串拆分！";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //textScaleFactor 放大字体
              children: info.split("").map((e)=> Text(e,textScaleFactor: 5.0,)).toList(),
            )
          )
        )
      )
    ); 
  }
}
```

通常SingleChildScrollView只应在期望的内容不会超过屏幕太多时使用，这是因为SingleChildScrollView不支持基于Sliver的延迟实例化模型，所以如果预计视口可能包含超出屏幕尺寸太多的内容时，那么使用SingleChildScrollView将会非常昂贵（性能差），此时应该使用一些支持Sliver延迟加载的可滚动组件，如ListView。

点击这里查看 [源码](./web/main.dart)。

