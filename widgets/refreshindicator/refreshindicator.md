## LinearProgressIndicator

### 描述
A widget that supports the Material “swipe to refresh” idiom.   
下拉刷新

### API
```javascript
RefreshIndicator
    ({
    Key key,
    @required this.child,
    this.displacement: 40.0, //触发下拉刷新的距离
    @required this.onRefresh, //下拉回调方法,方法需要有async和await关键字，没有await，刷新图标立马消失，没有async，刷新图标不会消失
    this.color, //进度指示器前景色 默认为系统主题色
    this.backgroundColor, //背景色
    this.notificationPredicate: defaultScrollNotificationPredicate,
})
```


### 示例  
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: RefreshIndicator(
        onRefresh: () async {
          return await Future.delayed(Duration(seconds: 3));
        },
        child: Center(
          child: ListView(
            padding: const EdgeInsets.all(8.0),
            children: <Widget>[
              Container(
                height: 50,
                child: const Center(child: Text('下拉刷新')),
              ),
              Container(
                height: 50,
                color: Colors.amber[500],
                child: const Center(child: Text('item 1')),
              ),
              Container(
                height: 50,
                color: Colors.amber[100],
                child: const Center(child: Text('item 2')),
              ),
            ],
          )
        )
      )
    );
  }
}
```

点击这里查看 [源码](./web/main.dart)。

