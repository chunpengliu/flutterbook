## Stack

### 描述
A widget that positions its children relative to the edges of its box.  
Stack 组件是一种层叠式布局，即组件覆盖另一个组件，覆盖的顺序取决于在children中放置的顺序，使用场景比如在图片上加上一些文字描述，即将文本Widget覆盖在图片组件
Stacks是基于Web开发中的绝度定位（absolute positioning )布局模型设计的。


### 示例  
红绿蓝三个正方形依次叠加
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 视频介绍
<iframe width="560" height="315" src="https://www.youtube.com/embed/liEGSeD3Zt8" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

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
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
            Container(
              width: 90,
              height: 90,
              color: Colors.green,
            ),
            Container(
              width: 80,
              height: 80,
              color: Colors.blue,
            ),
          ],
        )
      )
    );
  }
```

### API
```javascript
 Stack({
    Key key,
    this.alignment = AlignmentDirectional.topStart,
    this.textDirection,
    this.fit = StackFit.loose,
    this.overflow = Overflow.clip,
    List<Widget> children = const <Widget>[],
  })

```
* alignment 子Widgets们的对齐方式
* textDirection 文本的方向，默认当然是 left-to-right
* fit 子Widgets的放置方式，默认loose
* 子Widgets溢出的处理方式


点击这里查看 [源码](./web/main.dart)。

