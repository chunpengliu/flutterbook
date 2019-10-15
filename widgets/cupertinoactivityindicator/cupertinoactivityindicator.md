## CupertinoActivityIndicator

### 描述
A widget that aligns its child within itself and optionally sizes itself based on the child's size.  
ios风格的加载框。
### 构造函数
```javascript
CupertinoActivityIndicator({
    Key key,
    this.animating = true,//是否播放动画
    this.radius = _kDefaultIndicatorRadius,//加载框半径
})
```


### 示例 
不转圈和转圈的
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage> {
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
                child: CupertinoActivityIndicator(
                  radius: 30.0,
                  animating: false,
                )
              ),
              Padding(
                padding: EdgeInsets.all(8.0)
              ), 
              Container(
                child: CupertinoActivityIndicator(
                  radius: 30.0,
                  animating: true,
                )
              ),
            ],
          )
        )
    );
  }
}
```

点击这里查看 [源码](./web/main.dart)。

