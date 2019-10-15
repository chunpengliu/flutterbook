## OverflowBox

### 描述
A widget that imposes different constraints on its child than it gets from its parent, possibly allowing the child to overflow the parent.  
widget允许child超出parent的范围显示

### 对齐方式
```javascript
OverflowBox({
    Key key,
    this.alignment = Alignment.center,
    this.minWidth,
    this.maxWidth,
    this.minHeight,
    this.maxHeight,
    Widget child,
  })
```


### 示例  
需要设置maxHeight和maxWidth 当maxHeight大于height的时候，可以完全显示下来，当maxHeight小于height的时候，则不会会被隐藏掉
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Container(
        color: Colors.green,
        width: 200.0,
        height: 200.0,
        padding: const EdgeInsets.all(50.0),
        child: OverflowBox(
          alignment: Alignment.topLeft,
          maxWidth: 300.0,
          maxHeight: 500.0,
          child: Container(
            color: Color(0x33FF00FF),
            width: 400.0,
            height: 400.0,
          ),
        ),
      ),
    );
  }
}
```
### 使用场景
有时候设计图上出现的角标，会超出整个模块，可以使用OverflowBox控件。

点击这里查看 [源码](./web/main.dart)。

