## Offstage

### 描述
A widget that lays the child out as if it was in the tree, but without painting anything, without making the child available for hit testing, and without taking any room in the parent.  
通过一个参数，来控制child是否显示，类似于css的display属性
### 构造函数
```javascript
Offstage({
	Key key,
	this.offstage = true,
	Widget child
})
```


### 示例  
当offstage为true，当前控件不会被绘制在屏幕上，不会响应点击事件，也不会占用空间；
当offstage为false，当前控件则跟平常用的控件一样渲染绘制；
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  bool offstage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          children: <Widget>[
            Offstage(
              offstage: offstage,
              child: Container(color: Colors.blue, height: 100.0),
            ),
            FlatButton(
              child: Text("点击切换显示"),
              onPressed: () {
                setState(() {
                  offstage = !offstage;
                });
              },
            ),
          ],
        )
      ),
    );
  }
}
```
### 使用场景
当我们需要控制一个区域显示或者隐藏的时候，可以使用这个组件。其实也有其他代替的方法，但是成本会高很多，例如直接在tree上插入删除，但是不建议这么做。
点击这里查看 [源码](./web/main.dart)。

