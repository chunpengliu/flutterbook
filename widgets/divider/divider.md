## Divider

### 描述
A one device pixel thick horizontal line, with padding on either side.  
可以设置高度、边距的水平线。

### 构造函数
```javascript
Divider({
	Key key, 
	double height, //水平线的高度范围
	double thickness, //粗细
	double indent, // 缩进，距左边距的距离
	double endIndent, // 末尾缩进
	Color color // 水平线的颜色
})
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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              title: Text('第一行')
            ),
            Divider(),
            ListTile(
              title: Text('第二行'),
            ),
            Divider(),
            ListTile(
              title: Text('第三行'),
            ),
          ],
        )
      )
    );
  }
}
```

点击这里查看 [源码](./web/main.dart)。

