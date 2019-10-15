# 介绍

## 什么是Flutter？
Flutter是谷歌的移动UI框架，可以快速在iOS和Android以及WEB上构建高质量的用户界面。 Flutter可以与现有的代码一起工作。在全世界，Flutter正在被越来越多的开发者和组织使用，并且Flutter是完全免费、开源的。

## 什么是FlutterBook？
这里是Flutter所有Widget的中英文介绍以及使用教程，通过Flutter web实现Flutter的动态交互可视化，并提供了源码供参考。
线上地址：[http://ugd.oa.com/flutter-doc/_book/](http://ugd.oa.com/flutter-doc/_book/)


## 示例

> ## AnimatedContainer

>### 描述
A container that gradually changes its values over a period of time.  
在一段时间内逐渐改变其值的容器。只要container有值发生了变化，那么 AnimatedContainer 就会自动设置插值属性来改变值实现动画效果。

>### 构造函数
```javascript
  AnimatedContainer({
    Key key,
    this.alignment,
    this.padding,
    Color color,
    Decoration decoration,
    this.foregroundDecoration,
    double width,
    double height,
    BoxConstraints constraints,
    this.margin,
    this.transform,
    this.child,
    Curve curve = Curves.linear,
    @required Duration duration,
    Duration reverseDuration,
  })
```

>### 视频介绍
*注：如不能显示，请查看在线地址
<iframe width="560" height="315" src="https://www.youtube.com/embed/yI-8QHpGIP4" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>


>### 示例
*注：如不能显示，请查看在线地址  
<iframe src="./widgets/animatedcontainer/web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

>### 主要代码
```javascript
class _HomeState extends State<MyHomePage> {
  bool selected = false;
  _HomeState(){
    Timer.periodic(Duration(seconds: 2), (timer) {
        setState(() {
          selected = !selected;
        });
    });
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Center(
        child: AnimatedContainer(
          width: selected ? 200.0 : 100.0,
          height: selected ? 100.0 : 200.0,
          color: selected ? Colors.red : Colors.blue,
          alignment:
              selected ? Alignment.center : AlignmentDirectional.topCenter,
          duration: Duration(seconds: 2),
          curve: Curves.fastOutSlowIn,
          child: FlutterLogo(size: 75)
        ),
      ),
    );
  }
}
```

>点击这里查看 [源码](./web/main.dart)。
*注：如不能显示，请查看在线地址  

### 其他
由于Flutter组件数量很多且一直处于变动中，作者难免会有错误或疏漏，请联系刘春鹏（chunpengliu）更改，非常感谢。欢迎引用或者转载，无需申明，给个star即可。
