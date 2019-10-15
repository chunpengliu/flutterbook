## Tabbar

### 描述
A material design widget that displays a horizontal row of tabs.  
顶部导航切换，TabBar就是导航栏，TabBarView就是导航栏当前所对应的内容区。两者经常合用。

### 构造函数
```javascript
TabBar({
    Key key,
    @required this.tabs,//显示的标签内容，一般使用Tab对象,也可以是其他的Widget
    this.controller,//TabController对象
    this.isScrollable = false,//是否可滚动
    this.indicatorColor,//指示器颜色
    this.indicatorWeight = 2.0,//指示器高度
    this.indicatorPadding = EdgeInsets.zero,//底部指示器的Padding
    this.indicator,//指示器decoration，例如边框等
    this.indicatorSize,//指示器大小计算方式，TabBarIndicatorSize.label跟文字等宽,TabBarIndicatorSize.tab跟每个tab等宽
    this.labelColor,//选中label颜色
    this.labelStyle,//选中label的Style
    this.labelPadding,//每个label的padding值
    this.unselectedLabelColor,//未选中label颜色
    this.unselectedLabelStyle,//未选中label的Style
})

TabBarView({
    Key key,
    @required this.children,//子widget
    this.controller,//控制器
    this.physics,
    this.dragStartBehavior = DragStartBehavior.down,
})
```


### 示例  
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage> {

  List<String> _tabs = ['tab1', 'tab2', 'tab3'];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length, // This is the
      child: Scaffold(
        appBar: AppBar(title: Text(widget.title),
          bottom: TabBar(
            // These are the widgets to put in each tab in the tab bar.
            tabs: _tabs.map((String name) => Tab(text: name)).toList(),
          )
        ),
        body: TabBarView(
          // These are the contents of the tab views, below the tabs.
          children: _tabs.map((String name) {
            return SafeArea(
              top: false,
              bottom: false,
              child: Builder(
                // This Builder is needed to provide a BuildContext that is "inside"
                // the NestedScrollView, so that sliverOverlapAbsorberHandleFor() can
                // find the NestedScrollView.
                builder: (BuildContext context) {
                  return Center(
                    child: Text('Page $name'),
                  );
                },
              ),
            );
          }).toList(),
        )
      )
    );
  }
}
```

点击这里查看 [源码](./web/main.dart)。

