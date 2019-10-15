## Image

### 描述
A widget that displays an image.  
图片展示

### 加载方式
```javascript
Image：通过ImageProvider来加载图片
Image.asset：用来加载本地资源图片
Image.network：用来加载网络图片
```


### 示例  
多种图片展示方式
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          children:[  
            Text('方式一：'),
            Image(image:  AssetImage('images/logo.png')),
            Image(image:  NetworkImage('//mat1.gtimg.com/pingjs/ext2020/qqindex2018/dist/img/qq_logo_2x.png')),
            Text('方式二：'),
            Image.asset('images/logo.png'),
            Text('方式三：'),
            Image.network('//mat1.gtimg.com/pingjs/ext2020/qqindex2018/dist/img/qq_logo_2x.png')
          ]
        ),
      )
    );
  }
}
```

点击这里查看 [源码](./web/main.dart)。

