## CupertinoFullscreenDialogTransition

### 描述
A widget that aligns its child within itself and optionally sizes itself based on the child's size.  
iOS风格的全屏对话框

### 构造函数
```javascript
CupertinoFullscreenDialogTransition({
	Key key,
	@required Animation<double> animation,
	@required Widget child
})
```


### 示例  
点击文字显示弹层
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage> with SingleTickerProviderStateMixin{
  Animation<double> animation;
  AnimationController controller;
  @override
  void initState() {
    controller = AnimationController(duration: const Duration(seconds: 2), vsync: this);
    animation = Tween<double>(begin: 0.0,end: 1.0,).animate(controller);
    super.initState();
  }
  Future<void> _handleClickMe() async {
    return CupertinoFullscreenDialogTransition(
      child: Scaffold(
          body: Container(
            alignment: Alignment.center,
          child: Text('我是IOS风格的全屏对话框'),
        ),
      ), 
      animation: animation
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body:  Center(
          child: ListView(
            padding: const EdgeInsets.all(20.0),
            children: <Widget>[
              Container(
                height: 50,
                child: FlatButton(
                  onPressed: () {
                    _handleClickMe();
                  },
                  child: Text(
                    "点击显示弹层",
                  ),
                )
              )
            ],
          )
        )
    );
  }
}
```

点击这里查看 [源码](./web/main.dart)。

