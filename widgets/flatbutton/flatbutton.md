## FlatButton

### 描述
A material design “flat button”.   
一个扁平的Material按钮，可以实现无边框的按钮效果

### API
```javascript
  FlatButton({
    Key key,
    @required VoidCallback onPressed,
    ValueChanged<bool> onHighlightChanged,
    ButtonTextTheme textTheme,
    Color textColor,
    Color disabledTextColor,
    Color color,
    Color disabledColor,
    Color highlightColor,
    Color splashColor,
    Brightness colorBrightness,
    EdgeInsetsGeometry padding,
    ShapeBorder shape,
    Clip clipBehavior = Clip.none,
    MaterialTapTargetSize materialTapTargetSize,
    @required Widget child,
  })
```


### 示例  
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: FlatButton(
          onPressed: () {},
          child: Text(
            "FlatBtn",
            style: TextStyle(fontSize: 20, color: Colors.deepPurple),
          )
        )
      )
    );
  }
```

点击这里查看 [源码](./web/main.dart)。

