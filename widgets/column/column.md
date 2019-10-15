## Column

### 描述
A widget that displays its children in a vertical array.  
Flex中的列布局，一个 children 在垂直方向依次排列 。如果 Column 空间 不足的话。 自身不带滚动的。


### 示例  
图文纵向排列
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
            Text('文本框'),
            Container(
              color: Colors.blue,
              height: 30,
              width: 30,
            ),
            const FlutterLogo()
          ],
        )
      )
    );
  }
}
```

点击这里查看 [源码](./web/main.dart)。

