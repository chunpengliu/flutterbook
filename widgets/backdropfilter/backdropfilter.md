## BackdropFilter

### 描述
A widget that aligns its child within itself and optionally sizes itself based on the child's size.  
可以让你为一个元素后面区域添加图形效果（如模糊或颜色偏移）。

### 视频介绍
<iframe width="560" height="315" src="https://www.youtube.com/embed/dYRs7Q1vfYI" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### 示例  
中间100x100的正方形背景会模糊后面的图片。
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title)
      ),
      body: Center(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image(image:  NetworkImage('https://lorempixel.com/400/200/')),
            Center(
              child: ClipRect(  // <-- clips to the 200x200 [Container] below
                child: BackdropFilter(
                  filter: web_ui.ImageFilter.blur(
                    sigmaX: 5.0,
                    sigmaY: 5.0,
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    width: 100.0,
                    height: 100.0,
                    child: Text('Hello World'),
                  ),
                ),
              ),
            ),
          ],
        )
      )
    );
  }
```
### 备注
使用ImageFilter时，
Native开发需要引入dart:ui，web开发需要引入flutter_web_ui/ui.dart
BackdropFilter在web平台上不明显，Native上效果很好。


点击这里查看 [源码](./web/main.dart)。

