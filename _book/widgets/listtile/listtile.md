## ListTile

### 描述
A single fixed-height row that typically contains some text as well as a leading or trailing icon.  
ListTile 通常用于在 Flutter 中填充 ListView。
### 构造函数
```javascript
ListTile({
    Key key,
    this.leading,//左侧widget
    this.title,//标题
    this.subtitle,//副标题
    this.trailing,//右侧widget
    this.isThreeLine = false,//是否默认3行高度，subtitle不为空时才能使用
    this.dense,//设置为true后字体变小
    this.contentPadding,
    this.enabled = true,//能否被点击
    this.onTap,
    this.onLongPress,
    this.selected = false,//展示是否默认显示选中
})
```
### 视频介绍
<iframe width="560" height="315" src="https://www.youtube.com/embed/l8dj0yPBvgQ" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### 示例  
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body:  Center(
        child: ListView(
          children: const <Widget>[
            ListTile(
              title: Text('深圳')
            ),
            ListTile(
              title: Text('北京'),
              subtitle: Text('中国的首都'),
            ),
            Card(
              child: ListTile(
                leading: FlutterLogo(),
                title: Text('美丽的风景')
              ),
            ),
            Card(
              child: ListTile(
                leading: FlutterLogo(size: 72.0),
                title: Text('故宫'),
                subtitle: Text(
                  '故宫是历史名胜古迹，修建于明朝，有六百年的历史'
                ),
                trailing: Icon(Icons.more_vert),
                isThreeLine: true,
              ),
            ),
          ]
        )
      )
    );
  }
}
```

点击这里查看 [源码](./web/main.dart)。

