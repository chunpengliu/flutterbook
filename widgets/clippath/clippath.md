## ClipPath

### 描述
A widget that clips its child using a path.  
通过路径裁剪不规则图形

### API
```javascript
/**
 * ClipPath({
 * Key key,
 * this.clipper, //裁剪路径
 * this.clipBehavior = Clip.antiAlias,
 * Widget child
 * })
 */
```


### 示例  
斜角裁剪常用于背景
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage> {
  final String _imageUrl = 'https://inews.gtimg.com/newsapp_bt/0/10190343486/1000';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ClipPath(
        //剪切区域
        child: SizedBox(
          width: 640,
          height: 480,
          child: Image.network(_imageUrl, fit: BoxFit.cover,),
        ),
        clipper: HeaderColor(), //主要部分
      )
    );
  }
}

class HeaderColor extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    //x坐标为0.0 y坐标为手机高度一半
    //到x坐标为手机宽度 到 手机宽度的一半减去100 达到斜线的结果
    //到x坐标为手机宽度 到 y坐标为手机宽度
    var path = Path()
      ..lineTo(0.0, size.height / 2)
      ..lineTo(size.width, size.height / 2 - 100)
      ..lineTo(size.width, 0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
```

点击这里查看 [源码](./web/main.dart)。

