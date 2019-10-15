## Flutterlogo

### 描述
The Flutter logo, in widget form.  
Flutter logo, 以widget形式. 这个widget遵从IconTheme。常用于设计图占位。
### 构造函数
```javascript
  FlutterLogo({
    Key key,
    this.size,//设置大小
    this.colors,//设置颜色
    this.textColor = const Color(0xFF616161),//用于在徽标上绘制“Flutter”文本的颜色，如果样式为 FlutterLogoStyle.horizntal或FlutterLogoStyle.stacked。适当的颜色是const Color(0xFF616161)（中灰色），白色背景。
    this.style = FlutterLogoStyle.markOnly,//是否以及在何处绘制“颤动”文本。默认情况下，仅绘制徽标本身
    this.duration = const Duration(milliseconds: 750),//如果更改样式，颜色或 textColor属性，则动画的时间长度
    this.curve = Curves.fastOutSlowIn,//如果样式，颜色或textColor 发生更改，则会生成徽标动画的曲线。
  }) 
```


### 示例  
红色的大logo
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child:FlutterLogo(
          colors: Colors.red,
          size: 200,
        )
      )
    );
  }
}
```

点击这里查看 [源码](./web/main.dart)。

