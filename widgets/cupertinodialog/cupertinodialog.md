## CupertinoDialog

### 描述
An iOS-style dialog.  
IOS风格的弹层，可自定义弹层内容，不建议使用

### 构造函数
```javascript
CupertinoDialog({
	Key key,
	Widget child
})
```


### 示例  
点击文字显示弹层
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage> {
  
  String selectedVl = '';
  Future<void> _handleClickMe() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return CupertinoDialog(
          child:Container(
                height: 100,
                child: Text(
                  "弹层内容",
                )
              )
        );
      },
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

