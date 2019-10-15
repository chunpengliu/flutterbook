## RaisedButton

### 描述
A material design “raised button”.  
Material风格的按钮。

### API
```javascript
RaisedButton({
    Key key,
  //点击按钮的回调出发事件
    @required VoidCallback onPressed,
  //水波纹高亮变化回调
    ValueChanged<bool> onHighlightChanged,
  //按钮的样式（文字颜色、按钮的最小大小，内边距以及shape）[ Used with [ButtonTheme] and [ButtonThemeData] to define a button's base
//colors, and the defaults for the button's minimum size, internal padding,and shape.]
    ButtonTextTheme textTheme,
    //文字颜色
    Color textColor,
    //按钮被禁用时的文字颜色
    Color disabledTextColor,
    //按钮的颜色
    Color color,
    //按钮被禁用时的颜色  
    Color disabledColor,
    //按钮的水波纹亮起的颜色
    Color highlightColor,
    //水波纹的颜色
    Color splashColor,
    //按钮主题高亮
    Brightness colorBrightness,
    //按钮下面的阴影长度
    double elevation,
    //按钮高亮时的下面的阴影长度
    double highlightElevation,
    double disabledElevation,
    EdgeInsetsGeometry padding,
    ShapeBorder shape,
    Clip clipBehavior = Clip.none,
    MaterialTapTargetSize materialTapTargetSize,
    Duration animationDuration,
    Widget child,
  }
```


### 示例  
三种常见类型
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
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const RaisedButton(
              onPressed: null,
              child: Text('不可用按钮', style: TextStyle(fontSize: 20)),
            ),
            const SizedBox(height: 30),
            RaisedButton(
              onPressed: () {},
              child: const Text('正常按钮', style: TextStyle(fontSize: 20)),
            ),
            const SizedBox(height: 30),
            RaisedButton(
              onPressed: () {},
              textColor: Colors.white,
              padding: const EdgeInsets.all(0.0),
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color(0xFF0D47A1),
                      Color(0xFF1976D2),
                      Color(0xFF42A5F5),
                    ],
                  ),
                ),
                padding: const EdgeInsets.all(10.0),
                child: const Text('渐变按钮', style: TextStyle(fontSize: 20)),
              ),
            ),
          ],
        )));
  }
}
```

点击这里查看 [源码](./web/main.dart)。

