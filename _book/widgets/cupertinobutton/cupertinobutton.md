## CupertinoButton

### 描述
An iOS-style button.  
iOS风格的按钮。
### 构造函数
```javascript
CupertinoButton({
    @required this.child,
    this.padding,//内边距
    this.color,//可用时按钮颜色
    this.disabledColor,//不可用时按钮颜色
    this.minSize = 44.0,//按钮最小尺寸
    this.pressedOpacity = 0.1,//按下是按钮透明度是原来的多少，不能大于1
    this.borderRadius = const BorderRadius.all(Radius.circular(8.0)),//按钮圆角大小
    @required this.onPressed,//按下的回调
})
```


### 示例  
按钮类型
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage> with SingleTickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body:  Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              CupertinoButton(
                child: Text('按钮1'),
                onPressed: () { /** */ },
              ),
              CupertinoButton.filled(
                child: Text('按钮2'),
                onPressed: () { /** */ },
              ),
            ],
          )
        )
    );
  }
}
```

点击这里查看 [源码](./web/main.dart)。

