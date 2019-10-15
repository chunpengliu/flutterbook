## circleavatar

### 描述
A circle that represents a user.  
圆形头像

### API
```javascript
/**
 * 设置child为要显示的url时，并不能显示为圆形，只有设置backgroundColor或者backgroundImage时才显示为了圆形
 * radius和minRadius与maxRadius不能同时使用;
 * ClipOval不在Align里面时也不能显示为圆形，ClipOval中image设置为fit: BoxFit.fill才能显示为圆形；
 * BoxDecoration不在Align里面时也不能显示为圆形，BoxDecoration中image设置为fit: BoxFit.fill才能显示为圆形；
 *
    const CircleAvatar({
    Key key,
    this.child,
    this.backgroundColor,//背景色，相当于加载中或加载失败的占位图
    this.backgroundImage,//背景图，相当于加载中或加载失败的占位图
    this.foregroundColor,//前景色，
    this.radius,
    this.minRadius,
    this.maxRadius,
    })
 */

```


### 示例  
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage> {
  String _userAvatarUrl = 'https://thirdqq.qlogo.cn/g?b=oidb&k=g1gwbSibaaEm7icPUzI5t1icw&s=100&t=1556602146';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child:CircleAvatar(
          radius: 40,
          backgroundImage: NetworkImage(_userAvatarUrl),
      )
      )
    );
  }
}
```

点击这里查看 [源码](./web/main.dart)。

