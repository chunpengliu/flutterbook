## SimpleDialog

### 描述
A simple material design dialog.  
一个用于向用户传递确定信息并提供选项的弹出层。通过showDialog可以显示附加的提示和操作，通常配合SimpleDialogOption一起使用。

### 构造函数
```javascript
SimpleDialog({
    Key key,
    this.title,//标题
    this.titlePadding = const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0.0),//标题间距
    this.children,//要显示的内容
    this.contentPadding = const EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 16.0),//内容间距
    this.semanticLabel,//
    this.shape,//
})
```

### 示例
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class MyHomePageState extends State<MyHomePage> {
  Map selected = {
    "1": "确定",
    "2": "取消",
  };
  String selectedkey = '0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlatButton(
                    onPressed: () async {
                      String r = await showAlertDialog(context);
                      setState(() {
                        selectedkey = r;
                      });
                      print(r);
                    },
                    child: Text(
                      '显示弹层',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                    ),
                    color: Colors.blue,
                  ),
                  Text(selectedkey == '0' ? '' : '你点击了"${selected[selectedkey]}"按钮！')
                ]
              )
            )
        )
      );
  }

  Future showAlertDialog(BuildContext context) async {
    return await showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Text('this is alertdialog'),
          title: Center(
              child: Text(
            '标题',
            style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
          )),
          actions: <Widget>[
            FlatButton(
                onPressed: () {
                  Navigator.of(context).pop('1');
                },
                child: Text('确定')),
            FlatButton(
                onPressed: () {
                  Navigator.of(context).pop('2');
                },
                child: Text('取消')),
          ],
        );
      }
    );
  }
}
```

点击这里查看 [源码](./web/main.dart)。

