## InkWell

### 描述
A widget that aligns its child within itself and optionally sizes itself based on the child's size.  
响应touch事件的组件，在可点击区域，将水波动画添加到Widgets。

### 常用属性
```javascript
child	子组件
onTap	点击监听（）
onDoubleTap	双击监听
onLongPress	长按监听
onTapDown	点击监听
onTapCancel	取消点击监听
onHighlightChanged	当材料的这一部分突出显示或停止突出显示时调用
onHover	当指针进入或退出墨水响应区域时调用
focusColor	获取焦点颜色
hoverColor	指针悬停时颜色
highlightColor	长按颜色
splashColor	水波纹颜色
splashFactory	自定义水波纹
radius	水波纹半径
borderRadius	飞溅半径
customBorder	覆盖borderRadius的自定义剪辑边框
enableFeedback	检测到的手势是否应该提供声音和/或触觉反馈，默认true
excludeFromSemantics	是否将此小部件引入的手势从语义树中排除。默认false

```


### 示例  
如果给Container添加颜色 color: Colors.red，就会出现点击时没有水波纹。其实并不是说没有水波纹，而是被Container颜色遮挡了，解决方法是 使用Material添加颜色。
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child:  InkWell(
          onTap: () {
          },
          child:  Container(
            padding:  EdgeInsets.all(24.0),
            child:  Text('长按或点击按钮出水波纹'),
          ),
        )
      )
    );
  }
}
```

点击这里查看 [源码](./web/main.dart)。

