## tooltip

### 描述
A material design tooltip.  
长按提示浮层。

### 构造函数
```javascript
Tooltip({
	Key key,
	this.message,
	this.height,
	this.padding,
	this.animation,
	this.target,
	this.verticalOffset,
	this.preferBelow,
})
```
### 视频介绍
<iframe width="560" height="315" src="https://www.youtube.com/embed/EeEfD5fI-5Q" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### 示例  
长按图标出提示，WEB版是mouseover出提示。
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body:  Center(
        child: Tooltip(
          message: "删除",
          preferBelow:false,  //设置false就是在上面弹
          child: Icon(
            Icons.delete,
            size: 50.0,
          )
        )
      )
    );
  }
}
```

点击这里查看 [源码](./web/main.dart)。

