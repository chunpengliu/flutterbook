## alertDialog

### 描述
A material design alert dialog.  
信息弹出确认窗，用户可以操作列表，选项,有标题、内容、操作按，通常作为子组件传递给showDialog;

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

