## SizedOverflowBox

### 描述
A widget that is a specific size but passes its original constraints through to its child, which may then overflow..  
能强制子控件具有特定宽度、高度或两者都有，使子控件设置的宽高失效。
当子控件超出时，可以突破父节点尺寸的限制，超出部分也可以被渲染显示，与OverflowBox类似。

### 构造函数
```javascript
SizedOverflowBox({
  Key key,
  @required this.size,
  this.alignment = Alignment.center,
  Widget child,
})
```


### 示例  
蓝盒子超出外框宽度，仍然可以展示
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Container(
          color: Colors.red,
          child: SizedOverflowBox(
            size: const Size(100.0, 100.0),
            alignment: AlignmentDirectional.bottomStart,
            child: Container(height: 50.0, width: 150.0, color: Colors.blue,),
          ),
        )
      )
    );
  }
}
```
点击这里查看 [源码](./web/main.dart)。

