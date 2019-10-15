## align

### 描述
 widget that paints a Decoration either before or after its child paints.  
在其子组件绘制前(或后)绘制一些装饰（Decoration），如背景、边框、渐变等

### 构造函数
```javascript
const DecoratedBox({
  Decoration decoration,
  DecorationPosition position = DecorationPosition.background,
  Widget child
})
decoration：代表将要绘制的装饰，它的类型为Decoration。Decoration是一个抽象类，它定义了一个接口 createBoxPainter()，子类的主要职责是需要通过实现它来创建一个画笔，该画笔用于绘制装饰。
position：此属性决定在哪里绘制Decoration，它接收DecorationPosition的枚举类型，该枚举类有两个值：
background：在子组件之后绘制，即背景装饰。
foreground：在子组件之上绘制，即前景。

我们通常会直接使用BoxDecoration类，它是一个Decoration的子类，实现了常用的装饰元素的绘制。
BoxDecoration({
  Color color, //颜色
  DecorationImage image,//图片
  BoxBorder border, //边框
  BorderRadiusGeometry borderRadius, //圆角
  List<BoxShadow> boxShadow, //阴影,可以指定多个
  Gradient gradient, //渐变
  BlendMode backgroundBlendMode, //背景混合模式
  BoxShape shape = BoxShape.rectangle, //形状
})
```


### 示例  
内部红色盒子由于受到前景绿色半透明盒子的叠加，而变成棕色
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Container(
        child: DecoratedBox(
            decoration: BoxDecoration(
                color: Color(0x6600ff00), //半透明效果
                border: Border.all(
                    color: Color(0xff0000ff)
                ),
                borderRadius: BorderRadius.circular(10.0),
            ),
            position: DecorationPosition.foreground, //前景装饰
            // position: DecorationPosition.background,
            child: Container(
              padding: EdgeInsets.all(50.0),
              child: Container(
                width: 200.0,
                height: 200.0,
                color: Colors.red,
              ),
            ),
          )
      )
    ); 
  }
}
```

点击这里查看 [源码](./web/main.dart)。

