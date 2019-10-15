## Scaffold

### 描述
Implements the basic material design visual layout structure.  
脚手架，Material Design布局结构的基本实现。此类提供了用于显示drawer、snackbar和底部sheet的API。

### 构造方法
```javascript
const Scaffold({
  Key key,
  this.appBar, // 标题栏
  this.body,  // 用于显示当前界面主要内容的Widget
  this.floatingActionButton, // 一个悬浮在body上的按钮，默认显示在右下角
  this.floatingActionButtonLocation, // 用于设置floatingActionButton显示的位置
  this.floatingActionButtonAnimator, // floatingActionButton移动到一个新的位置时的动画
  this.persistentFooterButtons, // 多状态按钮
  this.drawer, // 左侧的抽屉菜单
  this.endDrawer, //  右'侧的抽屉菜单
  this.bottomNavigationBar,// 底部导航栏。
  this.bottomSheet, // 显示在底部的工具栏
  this.backgroundColor,// 内容的背景颜色
  this.resizeToAvoidBottomPadding = true, // 控制界面内容 body 是否重新布局来避免底部被覆盖，比如当键盘显示的时候，重新布局避免被键盘盖住内容。
  this.primary = true,// Scaffold是否显示在页面的顶部
})
```


### 示例  
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Text('You have pressed the button $_count times.'),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          _count++;
        }),
        tooltip: 'Increment Counter',
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
```

点击这里查看 [源码](./web/main.dart)。

