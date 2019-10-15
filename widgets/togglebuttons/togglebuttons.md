## ToggleButons

### 描述
A horizontal set of toggle buttons.  
一组水平的切换按钮。它水平显示 children列表中提供的Widget。

### 构造函数
```javascript
ToggleButtons({
  Key key,
  @required this.children,
  @required this.isSelected,
  this.onPressed,
  this.color,
  this.selectedColor,
  this.disabledColor,
  this.fillColor,
  this.focusColor,
  this.highlightColor,
  this.hoverColor,
  this.splashColor,
  this.focusNodes,
  this.renderBorder = true,
  this.borderColor,
  this.selectedBorderColor,
  this.disabledBorderColor,
  this.borderRadius,
  this.borderWidth,
})
1.children：Widget 的集合
2.isSelected：List<bool>，每个切换按钮相应的状态，true 为选中，该字段的长度必须和 children 的长度一致
3.onPressed：切换按钮的点击事件，如果为 null， 则该控件的状态为 disable
4.color：Text / Icon 状态为已启用并且未选中时的颜色
5.selectedColor：选中时的颜色
6.disabledColor：未启用时的颜色
7.fillColor：选中按钮的背景颜色
8.focusColor：当按钮中具有输入焦点时填充的颜色
9.highlightColor：点击时的颜色
10.hoverColor：当按钮上有指针悬停时用于填充按钮的颜色
11.splashColor：点击后的颜色
12.focusNodes：每一个按钮的焦点
13.renderBorder：是否在每个切换按钮周围呈现边框
14.borderColor：边框颜色
15.selectedBorderColor：选中的边框颜色
16.disabledBorderColor：不可用时边框颜色
17.borderRadius：边框半径18.borderWidth：边框宽度
```


### 示例  
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage> {

  List<bool> isSelected = [true, false, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child:Container(
          child: ToggleButtons(
            children: <Widget>[
              Icon(Icons.ac_unit),
              Icon(Icons.call),
              Icon(Icons.cake),
            ],
            onPressed: (int index) {
              setState(() {
                isSelected[index] = !isSelected[index];
              });
            },
            isSelected: isSelected,
          )
        )
      )
    );
  }
}
```

点击这里查看 [源码](./web/main.dart)。

