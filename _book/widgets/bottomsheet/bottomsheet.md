## BottomSheet

### 描述
A widget that aligns its child within itself and optionally sizes itself based on the child's size.  
BottomSheet 是一个底部滑出的组件。通常很少直接使用 BottomSheet 而是使用 showModalBottomSheet。直接使用的时候看到的只是 builder 里的内容。

### BottomSheet构造函数
```javascript
BottomSheet(
    onClosing: () {},
    builder: (BuildContext context) {
        return new Text('aaa');
    },
),
```
### showModalBottomSheet构造函数
```javascript
Future<T> showModalBottomSheet <T>({
    @required BuildContext context,
    @required WidgetBuilder builder
});
```


### 示例  
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
  class _HomeState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: RaisedButton(
          child: const Text('显示 BottomSheet'),
          onPressed: () {
            showModalBottomSheet<void>(context: context, builder: (BuildContext context) {
              return Container(
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Text('这里是bottomsheet内容展示去，下滑关闭',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Theme.of(context).accentColor,
                      fontSize: 24.0,
                    ),
                  ),
                ),
              );
            });
          },
        ),
      ),
    );
  }
}
```

点击这里查看 [源码](./web/main.dart)。

