## SnackBar

### 描述
A lightweight message with an optional action which briefly displays at the bottom of the screen.  
SnackBar是用户操作后，底部显示提示信息的一个控件，类似Toast，会自动隐藏。它还可以添加操作按钮，等等。

### 对齐方式
```javascript
content: 内容
backgroundColor: 背景颜色
elevation: 阴影高度
shape: 形状
behavior: 位置
	SnackBarBehavior.fixed // 固定在底部
	behavior:SnackBarBehavior.floating,//显示在[底部导航栏]上方
action: 动作（通常放按钮）
duration: 停留时间，如一秒：Duration(seconds: 1),
animation: 显示/隐藏动画
```


### 示例  
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage> {
  final snackBar =  SnackBar(
      content: Text('删除信息'),
      action: SnackBarAction(
          label: '取消',
          onPressed: () {
              // do something to undo
          }
      ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Builder(
        // Create an inner BuildContext so that the onPressed methods
        // can refer to the Scaffold with Scaffold.of().
        builder: (BuildContext context) {
          return Center(
            child: Container(
              child: RaisedButton(
                onPressed: () {
                  Scaffold.of(context).showSnackBar(snackBar);
                },
                child: Text("唤起SnackBar"),
              ),
            )
          );
        }
      )
    );
  }
}

注意：如果 build 函数返回一个 Scaffold 对象，则由于 Scaffold 对象是这个 Widget 的子对象，所以使用这个 build 的 BuildContext 参数是不能查找到 ScaffoldState 对象的，这个时候，通过在 Scaffold 中使用一个 Builder 来提供一个新的 BuildConext

Read more: http://blog.chengyunfeng.com/?p=1042#ixzz60zu2nUKE
```

点击这里查看 [源码](./web/main.dart)。

