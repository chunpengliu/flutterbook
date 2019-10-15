## Dismissible

### 描述
A widget that can be dismissed by dragging in the indicated direction.  
滑动删除

### 构造函数
```javascript
Dismissible({
    @required Key key,//
    @required this.child,//
    this.background,//滑动时组件下一层显示的内容，没有设置secondaryBackground时，从右往左或者从左往右滑动都显示该内容，设置了secondaryBackground后，从左往右滑动显示该内容，从右往左滑动显示secondaryBackground的内容
    //secondaryBackground不能单独设置，只能在已经设置了background后才能设置，从右往左滑动时显示
    this.secondaryBackground,//
    this.onResize,//组件大小改变时回调
    this.onDismissed,//组件消失后回调
    this.direction = DismissDirection.horizontal,//
    this.resizeDuration = const Duration(milliseconds: 300),//组件大小改变的时长
    this.dismissThresholds = const <DismissDirection, double>{},//
    this.movementDuration = const Duration(milliseconds: 200),//组件消失的时长
    this.crossAxisEndOffset = 0.0,//
})
```


### 示例  
图标在蓝框内靠右上对齐
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage> {
  List list = ['1','2','3','4'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          var item = list[index];
          return Dismissible(
            key: Key(item),
            child: ListTile(
              title: Text('第${item}行，滑动可以删除', ),
            ),
            onDismissed: (direction) {
              list.remove(index);
              print(direction);
            },
            background: Container(
              color: Colors.red,
              child: Center(
                child: Text("右划",
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
              )
            ),
            secondaryBackground: Container(
              color: Colors.green,
              child: Center(
                child: Text("左划",
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
              )
            ),
          );
        },
      )
    );
  }
}
```

点击这里查看 [源码](./web/main.dart)。

