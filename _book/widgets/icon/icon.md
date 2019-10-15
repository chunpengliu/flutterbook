## Icon

### 描述
A Material Design icon.  
小图标

### 构造方法
```javascript
 const Icon(this.icon, {
    Key key,
    this.size,
    this.color,
    this.semanticLabel,
    this.textDirection,
  })
```
全部图标地址：[https://material.io/resources/icons/?style=baseline](https://material.io/resources/icons/?style=baseline)


### 示例  
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 资源
```javascript
class _HomeState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child:Icon(
          Icons.alarm,
          color: Colors.pink,
          size: 30.0,
        )
      )
    );
  }
}
```

点击这里查看 [源码](./web/main.dart)。

