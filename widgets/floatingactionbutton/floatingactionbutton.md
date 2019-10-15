## FloatingActionButton

### 描述
A material design floating action button.  
悬浮按钮

### API
```javascript
FloatingActionButton({
    Key key,
    //  按钮上的组件，可以是Text、icon, etc.
    this.child,
    //长按提示
    this.tooltip,
    // child的颜色（尽在child没有设置颜色时生效）
    this.foregroundColor,
    //背景色，也就是悬浮按键的颜色
    this.backgroundColor,
    this.heroTag = const _DefaultHeroTag(),
    //阴影长度
    this.elevation = 6.0,
    //高亮时阴影长度
    this.highlightElevation = 12.0,
    //按下事件回调
    @required this.onPressed,
    //是小图标还是大图标
    this.mini = false,
    //按钮的形状(例如：矩形Border，圆形图标CircleBorder)
    this.shape = const CircleBorder(),
    this.clipBehavior = Clip.none,
    this.materialTapTargetSize,
    this.isExtended = false,
})
```

### 视频介绍
<iframe width="560" height="315" src="https://www.youtube.com/embed/2uaoEDOgk_I" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

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
        child: FloatingActionButton(
          child: Icon(Icons.access_alarm),
          tooltip: "长按提示",
          foregroundColor: Colors.white,
          backgroundColor: Colors.pink,
          onPressed: () {
            //click callback
          },
        )
      )
    );
  }
}
```

点击这里查看 [源码](./web/main.dart)。

