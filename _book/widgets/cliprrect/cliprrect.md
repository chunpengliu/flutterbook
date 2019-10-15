## ClipRRect

### 描述
A widget that clips its child using a rounded rectangle.  
圆形裁剪

### 
```javascript
/**
 *  const ClipRRect({
    Key key,
    this.borderRadius,//圆角半径
    this.clipper,//裁剪路径
    this.clipBehavior = Clip.antiAlias,
    Widget child,
    })
 */
```
### 视频介绍
<iframe width="560" height="315" src="https://www.youtube.com/embed/eI43jkQkrvs" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### 示例  
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child:Container(
          height: 120.0,
          width: 120.0,
          color: Colors.blue[50],
          child: Align(
            alignment: Alignment.topRight,
            child: FlutterLogo(
              size: 60,
            ),
          ),
        )
      ), 
    );
  }
}
```

点击这里查看 [源码](./web/main.dart)。

