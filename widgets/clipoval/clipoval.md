## ClipOval

### 描述
A widget that clips its child using an oval.  
椭圆裁切

### API
```javascript
/**
 * ClipOval({
 * Key key,
 * this.clipper, //裁剪路径
 * this.clipBehavior = Clip.antiAlias,
 * Widget child
 * })
 */
```


### 示例  
可以借助SizedBox限制大小
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
        child:ClipOval(
          child: SizedBox(
            width: 120,
            height: 100,
            child: Image.network(_imageUrl, fit: BoxFit.cover,),
          ),
        )
      )
    );
  }
}
```

点击这里查看 [源码](./web/main.dart)。

