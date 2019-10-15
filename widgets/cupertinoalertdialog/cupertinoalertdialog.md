## CupertinoAlertDialog

### 描述
An iOS-style alert dialog.  
IOS风格的提醒弹层

### 构造函数
```javascript
CupertinoAlertDialog({
    Key key,
    this.title,
    this.content,
    this.actions = const <Widget>[],
    this.scrollController,
    this.actionScrollController,
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
        return CupertinoAlertDialog(
          title: Text('我是标题'),
          content: Text('这里是内容，是否确定执行操作？'),
          actions: <Widget>[
            CupertinoDialogAction(
              child: Text('否'),
              onPressed: () {
                setState(() {
                  selectedVl = '否';
                });
                Navigator.of(context).pop();
              },
            ),
            CupertinoDialogAction(
              child: Text('是'),
              onPressed: () {
                setState(() {
                  selectedVl = '是';
                });
                Navigator.of(context).pop();
              },
            ),
          ],
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
              ),
              Padding(
                padding: EdgeInsets.all(8.0)
              ), 
              Container(
                child: Text((selectedVl.isNotEmpty )?  '你选中了"${selectedVl}"' : '')
              ),
            ],
          )
        )
    );
  }
}
```

点击这里查看 [源码](./web/main.dart)。

