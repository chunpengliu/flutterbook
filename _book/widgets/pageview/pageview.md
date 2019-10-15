## PageView

### 描述
A scrollable list that works page by page.  
左右滑切换页面

### 构造函数
```javascript
PageView - 创建一个可滚动列表。
PageView.builder - 创建一个滚动列表，指定数量。
PageView.custom - 创建一个可滚动的列表，自定义子项。
常用属性：
childrenDelegate → SliverChildDelegate - 子项列表。
controller → PageController - 控制台。
onPageChanged → ValueChanged - 索引改变时触发。
pageSnapping → bool - 设置为 false 以禁用页面捕捉，对自定义滚动行为很有用。
physics → ScrollPhysics - 页面视图如何响应用户输入，即滚动的动画表现。
reverse → bool - 是否反方向。
scrollDirection → Axis - 视图滚动的方向。
```
### 视频介绍
<iframe width="560" height="315" src="https://www.youtube.com/embed/J1gE9xvph-A" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### 示例  
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: PageView(
        children: <Widget>[
          Container(
            color: Colors.red,
            child: Center(
              child: Text('第一页'),
            ),
          ),
          Container(
            color: Colors.blue,
            child: Center(
              child: Text('第二页'),
            ),
          ),
          Container(
            color: Colors.green,
            child: Center(
              child: Text('第三页'),
            ),
          ),
        ],
      )
    );
  }
}

```

点击这里查看 [源码](./web/main.dart)。

