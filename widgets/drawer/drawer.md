## Drawer

### 描述
A material design panel that slides in horizontally from the edge of a Scaffold to show navigation links in an application. 
“抽屉”效果，一个从侧边栏拉出来的导航面板。Drawer 与Scaffold一起使用。是Scaffold中drawer属性。drawer通常是一个ListView，它的第一个子视图是一个DrawerHeader，但我们通常使用UserAccountsDrawerHeader显示当前用户的状态信息。其余的drawer子元素通常由ListTile构造，通常以AboutListTile结束。 

### 构造函数
```javascript
Drawer({
    Key key,
    this.elevation = 16.0,
    this.child,
    this.semanticLabel,
})
```


### 示例  
可以通过侧滑和点击按钮拉起Drawer
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      drawer: Drawer(
        child:Container(
          alignment: Alignment.center,
          child: Text('我是Drawer',style: TextStyle(fontSize: 30),),
        )
      ),
      body:  Center(
          child: ListView(
            padding: const EdgeInsets.all(8.0),
            children: <Widget>[
              Container(
                height: 50,
                child: const Center(child: Text('1、侧滑弹出')),
              ),
              Container(
                height: 50,
                color: Colors.amber[500],
                child: Builder(
                  builder: (context){
                    return RaisedButton(
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      child: Text("点击弹出")
                    );
                }),
              ),
            ],
          )
        )
    );
  }
}
```

点击这里查看 [源码](./web/main.dart)。

