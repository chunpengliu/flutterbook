## Row

### 描述
A widget that displays its children in a horizontal array.  
在Flutter中非常常见的一个多子节点控件，将children排列成一行。但是注意一点，自身不带滚动属性，如果超出了一行，在debug下面则会显示溢出的提示。

### 构造函数
```javascript
Row({
  Key key,
  MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
  MainAxisSize mainAxisSize = MainAxisSize.max,
  CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
  TextDirection textDirection,
  VerticalDirection verticalDirection = VerticalDirection.down,
  TextBaseline textBaseline,
  List<Widget> children = const <Widget>[],
})
```


### 示例  
水平方向排列
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
Row(
  children: <Widget>[
    Expanded(
      child: Container(
        color: Colors.red,
        padding: EdgeInsets.all(5.0),
      ),
      flex: 1,
    ),
    Expanded(
      child: Container(
        color: Colors.yellow,
        padding: EdgeInsets.all(5.0),
      ),
      flex: 2,
    ),
    Expanded(
      child: Container(
        color: Colors.blue,
        padding: EdgeInsets.all(5.0),
      ),
      flex: 1,
    ),
  ],
)
```

点击这里查看 [源码](./web/main.dart)。

