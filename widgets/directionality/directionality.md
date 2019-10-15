## Directionality

### 描述
A widget that determines the ambient directionality of text and text-direction-sensitive render objects. 
主要控制文字方向，已集成在ButtonBar等排列widget

### 构造函数
```javascript
Directionality({
	Key key,
	@required TextDirection textDirection,
	@required Widget child
})

```


### 示例  
rtl文本方向从右到左。 lrt(默认) 文本方向从左到右。
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Row(
            children:[
              Text('hello '),
              Text('world '),
              Text('!'),
            ]
          )
        )
      ),
    );
  }
}
```
### 使用场景：

文本阅读顺序

点击这里查看 [源码](./web/main.dart)。

