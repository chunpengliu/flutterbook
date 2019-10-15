## LinearProgressIndicator

### 描述
A material design linear progress indicator, also known as a progress bar.   
直线加载进度条

### API
```javascript
 LinearProgressIndicator({
    Key key,
    double value,//0~1的浮点数，用来表示进度多少;如果 value 为 null 或空，则显示一个动画，否则显示一个定值
    Color backgroundColor,//背景颜色
    Animation<Color> valueColor,//animation类型的参数，用来设定进度值的颜色，默认为主题色
    String semanticsLabel,
    String semanticsValue,
  })
```


### 示例  
指定进度和非指定进度
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript

class _HomeState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 50.0, right: 50.0, top: 50.0),
              child: LinearProgressIndicator(
                value: 0.3,
                backgroundColor: Color(0xff00ff00),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 50.0, right: 50.0, top: 50.0),
              child: LinearProgressIndicator(
              ),
            )
          ]
        )
      )
    );
  }
}
```

点击这里查看 [源码](./web/main.dart)。

