## AnimatedBuilder

### 描述
A general-purpose widget for building animations.  
用于构建动画的通用小部件。AnimatedBuilder在有多个widget希望有一个动画作为一个较大的建造函数部分时会非常有用。要使用AnimatedBuilder，只需构建widget并将其传给builder函数即可。
### 构造函数
```javascript
class AnimatedBuilder extends AnimatedWidget {

  const AnimatedBuilder({
    Key key,
    @required Listenable animation, // 要做的动画 Animation
    @required this.builder, // 动画 value 变化时调用的函数
    this.child, // 要做动画的 widget
  }) : assert(builder != null),
       super(key: key, listenable: animation);

  // Animation 的 value 变化时会调用 builder 这个函数
  final TransitionBuilder builder;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return builder(context, child);
  }
}
```
### 视频介绍
<iframe width="560" height="315" src="https://www.youtube.com/embed/N-RiyZlv8v8" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>


### 示例  
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage> with SingleTickerProviderStateMixin{
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          child: Container(width: 200.0, height: 200.0, color: Colors.green),
          builder: (BuildContext context, Widget child) {
            return Transform.rotate(
              angle: _controller.value * 2.0 * pi,
              child: child,
            );
          },
        )
      )
    );
  }
}
```

点击这里查看 [源码](./web/main.dart)。

