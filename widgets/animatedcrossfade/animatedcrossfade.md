## AnimatedCrossFade

### 描述
A widget that cross-fades between two given children and animates itself between their sizes.  
在一个widget内的两个子wigdet之间交叉淡入，并同时调整他们的尺寸。firstChild 在一定时间逐渐变成 secondChild 变化的动画

### 构造函数
```javascript
const AnimatedCrossFade({
    Key key,
    @required this.firstChild,                    //第一个动画元素
    @required this.secondChild,                   //第二个动画元素
    this.firstCurve = Curves.linear,              //第一个动画元素的插值器
    this.secondCurve = Curves.linear,             //第二个动画元素的插值器
    this.sizeCurve = Curves.linear,               //动画切换时候的尺寸变化插值器
    this.alignment = Alignment.topCenter,         //动画切换后的对齐方式
    @required this.crossFadeState,                //动画当前的状态
    @required this.duration,                      //动画时长
    this.layoutBuilder = defaultLayoutBuilder,    //动画布局的构造器
  }) 
```


### 两个widget变换动画 示例  
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage> {
  int time = 0;
  bool _first = true;
  _HomeState() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        switch (time % 4) {
          case 0:
            _first = false;
            break;
          case 2:
            _first = true;
            break;
        }
        time++;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          children: <Widget>[
            AnimatedCrossFade(
              alignment: AlignmentDirectional(0.0, 1.0),
              duration: Duration(seconds: 1),
              firstCurve: Curves.fastOutSlowIn,
              secondCurve: Curves.fastOutSlowIn,
              sizeCurve: Curves.fastOutSlowIn,
              firstChild: FlutterLogo(
                style: FlutterLogoStyle.horizontal,
                size: 100.0,
              ),
              secondChild: FlutterLogo(
                style: FlutterLogoStyle.stacked,
                size: 200.0,
              ),
              crossFadeState:
                  _first ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            ),
          ],
        )
      ),
    );
  }
}
```

点击这里查看 [源码](./web/main.dart)。

