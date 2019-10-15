## AnimatedContainer

### 描述
A container that gradually changes its values over a period of time.  
在一段时间内逐渐改变其值的容器。只要container有值发生了变化，那么 AnimatedContainer 就会自动设置插值属性来改变值实现动画效果。

### 构造函数
```javascript
  AnimatedContainer({
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
    Curve curve = Curves.linear,
    @required Duration duration,
    Duration reverseDuration,
  })
```

### 视频介绍
<iframe width="560" height="315" src="https://www.youtube.com/embed/yI-8QHpGIP4" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>


### 示例  
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage> {
  bool selected = false;
  _HomeState(){
    Timer.periodic(Duration(seconds: 2), (timer) {
        setState(() {
          selected = !selected;
        });

    });
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Center(
        child: AnimatedContainer(
          width: selected ? 200.0 : 100.0,
          height: selected ? 100.0 : 200.0,
          color: selected ? Colors.red : Colors.blue,
          alignment:
              selected ? Alignment.center : AlignmentDirectional.topCenter,
          duration: Duration(seconds: 2),
          curve: Curves.fastOutSlowIn,
          child: FlutterLogo(size: 75)
        ),
      ),
    );
  }
}
```

点击这里查看 [源码](./web/main.dart)。

