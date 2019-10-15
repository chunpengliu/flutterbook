## align

### 描述
Similar to a FlatButton with a thin grey rounded rectangle border.  
和FlatButton类似是一个有默认边线且背景透明的按钮，也就是说我们设置其边线和颜色是无效的。

### 常见属性
```javascript
onPressed，必填参数，按下按钮时触发的回调，接收一个方法，传null值表示按钮禁用，会显示禁用相关样式
child，表示按钮展示状态的Widget，一般为一个文本组件
textColor，文本颜色
color，按钮的背景颜色（无效）
disabledColor，按钮禁用时的背景颜色
disabledTextColor，按钮禁用时的文本颜色
splashColor，点击按钮时水波纹的颜色
highlightColor，点击（长按）按钮后按钮的背景颜色
elevation，阴影的范围，值越大阴影范围就越大
padding，内边距
shape，设置按钮的形状
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
      body:  Center(
        child: OutlineButton(
          onPressed: () {
            /*...*/
          },
          child: Text(
            "Outline Button",
          ),
        )
      )
    );
  }
}
```

点击这里查看 [源码](./web/main.dart)。

