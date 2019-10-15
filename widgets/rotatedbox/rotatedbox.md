## RotatedBox

### 描述
A widget that aligns its child within itself and optionally sizes itself based on the child's size.  
可以按顺时针以90度的倍数，旋转其子widget。

### 对齐方式
```javascript
 RotatedBox({
    Key key,
    @required this.quarterTurns,//旋转的次数，每次旋转的度数只能是90度的整数倍
    Widget child,
 })
```


### 示例
RotatedBox和Transform.rotate功能相似，它们都可以对子组件进行旋转变换，但是有一点不同：RotatedBox的变换是在layout阶段，会影响在子组件的位置和大小。
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

