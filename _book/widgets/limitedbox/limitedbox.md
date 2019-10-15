## LimitedBox

### 描述
A widget that aligns its child within itself and optionally sizes itself based on the child's size.  
限制类型的控件，对最大宽高进行限制的控件。

### 构造函数
```javascript
LimitedBox({
  Key key,
  this.maxWidth = double.infinity,
  this.maxHeight = double.infinity,
  Widget child,
})
```
### 视频介绍
<iframe width="560" height="315" src="https://www.youtube.com/embed/uVki2CIzBTs" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### 示例  
红蓝（设置宽200）两块宽都是100
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body:  Row(
          children: <Widget>[
            Container(
              color: Colors.red,
              width: 100.0,
            ),
            LimitedBox(
              maxWidth: 100.0,
              child: Container(
                color: Colors.blue,
                width: 250.0,
              ),
            ),
          ],
        )
      
    );
  }
}
```

点击这里查看 [源码](./web/main.dart)。

