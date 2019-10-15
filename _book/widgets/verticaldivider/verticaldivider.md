## VerticalDivider

### 描述
A thin vertical line, with padding on either side.   
垂直的分割线

### 构造函数
```javascript
VerticalDivider({
	Key key,
	double width, 
	double thickness, 
	double indent,
	double endIndent,
	Color color
});
```


### 示例  
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Container(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              child: Text('Item1')
            ),
            VerticalDivider(
              width: 50.0
            ),
            Container(
              child: Text('Item2'),
            ),
            VerticalDivider(
            ),
            Container(
              child: Text('Item3'),
            ),
          ],
        )
      )
    );
  }
}
```

点击这里查看 [源码](./web/main.dart)。

