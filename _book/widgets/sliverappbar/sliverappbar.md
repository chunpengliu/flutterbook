## AppBar

### 描述
A material design app bar that integrates with a CustomScrollView.
AppBar 和 SliverAppBar 都是一个顶端栏，都代表 Toobar，二者的区别在于 AppBar 位置的固定的应用最上面的；而 SliverAppBar 是可以跟随内容滚动的。
### 构造函数
```javascript
SliverAppBar({
    Key key,
    this.leading,         //左侧标题
    this.automaticallyImplyLeading = true,
    this.title,               //标题
    this.actions,          //菜单
    this.flexibleSpace,        //可以展开区域，通常是一个FlexibleSpaceBar
    this.bottom,         //底部内容区域
    this.elevation,            //阴影
    this.forceElevated = false, 
    this.backgroundColor,       //背景色
    this.brightness,   /主题明亮
    this.iconTheme,  //图标主题
    this.textTheme,    //文字主题
    this.primary = true,  //是否预留高度
    this.centerTitle,     //标题是否居中
    this.titleSpacing = NavigationToolbar.kMiddleSpacing,
    this.expandedHeight,     //展开高度
    this.floating = false,       //是否随着滑动隐藏标题
    this.pinned = false,  //是否固定在顶部
    this.snap = false,   //与floating结合使用
  })
```
### 视频介绍
<iframe width="560" height="315" src="https://www.youtube.com/embed/R9C5KMJKluE" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### 示例  
图标在蓝框内靠右上对齐
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 150.0,
            flexibleSpace: const FlexibleSpaceBar(
              title: Text('SliverAppBar'),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
                Container(
                  height: 1200.0, 
                  color: Colors.green,
                  child:Text('上下拖动内容列表')
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}
```


点击这里查看 [源码](./web/main.dart)。

