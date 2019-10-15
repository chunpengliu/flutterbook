## PopupMenuButton

### 描述
Displays a menu when pressed and calls onSelected when the menu is dismissed because an item was selected. The value passed to onSelected is the value of the selected menu item.  
当菜单隐藏时，点击并且调用onSelected时显示一个弹出式菜单列表

### API
```javascript
PopupMenuButton({
	Key key,
	//构建弹出式列表数据
	PopupMenuItemBuilder<T> @required this.itemBuilder,
	//初始值
	T initialValue,
	//选中时的回调
	PopupMenuItemSelected<T> onSelected;,
	//当未选中任何条目后弹窗消失时的回调
	final PopupMenuCanceled onCanceled;,
	//
	this.tooltip,
	//弹窗阴影高度
	this.elevation = 8.0,
	//边距
	this.padding = const EdgeInsets.all(8.0),
	//弹窗的位置显示的组件，默认为三个点...
	this.child,
	//跟child效果一致
	this.icon,
	//弹窗偏移位置
	this.offset = Offset.zero,
})

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
        child: ButtonBar(
          alignment : MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text('按钮1'),
              color: Colors.blue,
              onPressed: () {/** */},
            ),
            FlatButton(
              child: Text('按钮2'),
              color: Colors.blue,
              onPressed: () {/** */},
            ),
          ],
        )
      )
    );
  }
}
```

点击这里查看 [源码](./web/main.dart)。

