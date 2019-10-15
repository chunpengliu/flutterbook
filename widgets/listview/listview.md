## ListView

### 描述
A scrollable, linear list of widgets.  
可以滚动的纵向列表

### 构造函数
```javascript
ListView({
  Key key,
  Axis scrollDirection = Axis.vertical,
  bool reverse = false,
  ScrollController controller,
  bool primary,
  ScrollPhysics physics,
  bool shrinkWrap = false,
  EdgeInsetsGeometry padding,
  this.itemExtent,
  bool addAutomaticKeepAlives = true,
  bool addRepaintBoundaries = true,
  double cacheExtent,
  List<Widget> children = const <Widget>[],
})
同时也提供了如下额外的三种构造方法，方便开发者使用。
ListView.builder
ListView.separate
ListView.custom
```

### 视频介绍
<iframe width="560" height="315" src="https://www.youtube.com/embed/KJpkjHGiI5A" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>


### 示例  
固定列表和无限列表切换
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
Widget listView = ListView(
  padding: const EdgeInsets.all(8.0),
  children: <Widget>[
    Container(
      height: 50,
      color: Colors.amber[600],
      child: const Center(child: Text('item1')),
    ),
    Container(
      height: 50,
      color: Colors.amber[500],
      child: const Center(child: Text('item2')),
    ),
    Container(
      height: 50,
      color: Colors.amber[100],
      child: const Center(child: Text('item3')),
    ),
  ],
);
Widget listViewBuilder = ListView.builder(
  itemCount: 1000,
  itemBuilder: (context, index) {
    return ListTile(
      title: Text("第${index}行"),
    );
  },
);

class _HomeState extends State<MyHomePage>{
  bool listStatus = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Container(
        child: listStatus ? listViewBuilder:listView 
      ),
      floatingActionButton: FlatButton(
        onPressed: () {
          setState(() {
            listStatus = !listStatus;
          });
        },
        child: Text('列表切换')
      ),
    );
  }
}
```

点击这里查看 [源码](./web/main.dart)。

