## ClipRect

### 描述
A widget that clips its child using a rectangle.  
方形裁切，ClipRect 默认是没有任何裁剪效果的，需要通过clipper参数告诉ClipRect如何去裁剪
### 对齐方式
```javascript
ClipRect({
	Key key, 
	CustomClipper<Rect> clipper, 
	Clip clipBehavior: Clip.hardEdge, 
	Widget child 
})
clipper ： 自定义裁剪的大小跟局域
clipBehavior ： 裁剪方式，取值有：
Clip.hardEdge（快速裁剪，牺牲质量，不支持抗锯齿）
antiAlias（较慢的裁剪，支持抗锯齿，裁剪出来的边框相对圆滑），antiAliasWithSaveLayer （裁剪效率最低最慢，通常比较少用到）
```


### 示例  
从左上(100,100)处开始裁剪
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage> {
  final String _imageUrl = 'https://inews.gtimg.com/newsapp_bt/0/10190343486/1000';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child:ClipRect(
          clipper: _MyClipper(),
          child: Align(
            alignment: Alignment.topCenter,
            child: Image.network(_imageUrl),
          ),
        )
      )
    );
  }
}

class _MyClipper extends CustomClipper<Rect>{
  @override
  Rect getClip(Size size) {
    return  Rect.fromLTRB(100.0, 100.0, size.width - 10.0,  size.height- 10.0);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return false;
  }
}
```

点击这里查看 [源码](./web/main.dart)。

