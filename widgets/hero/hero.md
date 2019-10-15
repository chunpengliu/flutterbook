## AnimatedCrossFade

### 描述
A widget that marks its child as being a candidate for hero animations.  
Hero即英雄、超人，会飞的widget。Hero动画就是在路由切换时，有一个共享的widget可以在新旧路由间切换。由于共享的widget在新旧路由页面上的位置、外观可能有所差异，所以在路由切换时会从旧路逐渐过渡到新路由中的指定位置，这样就会产生一个Hero动画。

### 构造函数
```javascript
Hero(
  tag: "DemoTag",
  child: Icon(
    Icons.add,
    size: 70.0,
  ),
)
```
### 视频介绍
<iframe width="560" height="315" src="https://www.youtube.com/embed/Be9UH1kXFDw" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### 查看头像大图切换示例  
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
        alignment: Alignment.topCenter,
        child: InkWell(
          child: Hero(
            tag: "avatar", //唯一标记，前后两个路由页Hero的tag必须相同
            child: ClipOval(
              child: Image.asset(
                "images/logo.png",
                width: 50.0,
              ),
            ),
          ),
          onTap: () {
            //打开hero路由
            Navigator.push(context, PageRouteBuilder(pageBuilder:
                (BuildContext context, Animation animation,
                    Animation secondaryAnimation) {
              return FadeTransition(
                opacity: animation,
                child: Scaffold(
                  appBar: AppBar(
                    title: Text("原图"),
                  ),
                  body: HeroAnimationRoute(),
                ),
              );
            }));
          },
        ),
      )),
    );
  }
}

class HeroAnimationRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Hero(
          tag: "avatar", //唯一标记，前后两个路由页Hero的tag必须相同
          child: Image.asset("images/logo.png"),
      ),
    );
  }
}
```
资料详情：[https://flutterchina.club/animations/hero-animations/](https://flutterchina.club/animations/hero-animations/)
点击这里查看 [源码](./web/main.dart)。

