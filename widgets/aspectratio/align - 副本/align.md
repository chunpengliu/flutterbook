## align

### 描述
A widget that aligns its child within itself and optionally sizes itself based on the child's size.  
Align一般都是当做一个控件的属性，并没有拿出来当做一个单独的控件。Align本身实现的功能并不复杂，设置child的对齐方式，例如居中、居左居右等，并根据child尺寸调节自身尺寸。它能够实现的功能，Container都能实现。

### 对齐方式
```javascript
bottomCenter    (0.5, 1.0)    底部中心
bottomLeft    (0.0, 1.0)    左下角
bottomRight    (1.0, 1.0)    右下角
center    (0.5, 0.5)    水平垂直居中
centerLeft    (0.0, 0.5)    左边缘中心
centerRight    (1.0, 0.5)    右边缘中心
topCenter    (0.5, 0.0)    顶部中心
topLeft    (0.0, 0.0)    左上角
topRight    (1.0, 0.0)    右上角
```


### 示例  
图标在蓝框内靠右上对齐
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

