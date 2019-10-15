## Wrap

### 描述
A widget that displays its children in multiple horizontal or vertical runs.  
流式布局控件，类似于css的flex布局。单行的Wrap跟Row表现几乎一致，单列的Wrap则跟Row表现几乎一致。但Row与Column都是单行单列的，Wrap则突破了这个限制，mainAxis上空间不足时，则向crossAxis上去扩展显。

### 构造函数
```javascript
Wrap({
  Key key,
  this.direction = Axis.horizontal,
  this.alignment = WrapAlignment.start,
  this.spacing = 0.0,
  this.runAlignment = WrapAlignment.start,
  this.runSpacing = 0.0,
  this.crossAxisAlignment = WrapCrossAlignment.start,
  this.textDirection,
  this.verticalDirection = VerticalDirection.down,
  List<Widget> children = const <Widget>[],
})
direction：主轴（mainAxis）的方向，默认为水平。
alignment：主轴方向上的对齐方式，默认为start。
spacing：主轴方向上的间距。
runAlignment：run的对齐方式。run可以理解为新的行或者列，如果是水平方向布局的话，run可以理解为新的一行。
runSpacing：run的间距。
crossAxisAlignment：交叉轴（crossAxis）方向上的对齐方式。
textDirection：文本方向。
verticalDirection：定义了children摆放顺序，默认是down，见Flex相关属性介绍。
```
### 视频介绍
<iframe width="560" height="315" src="https://www.youtube.com/embed/z5iw2SeFx2M" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### 示例  
小铁片自动换行
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Container(
        child: Wrap(
          spacing: 8.0, // gap between adjacent chips
          runSpacing: 4.0, // gap between lines
          children: <Widget>[
            Chip(
              avatar: CircleAvatar(
                  backgroundColor: Colors.blue.shade900, child: Text('BJ', style: TextStyle(fontSize: 10.0),)),
              label: Text('Beijing'),
            ),
            Chip(
              avatar: CircleAvatar(
                  backgroundColor: Colors.blue.shade900, child: Text('SH', style: TextStyle(fontSize: 10.0),)),
              label: Text('Shanghai'),
            ),
            Chip(
              avatar: CircleAvatar(
                  backgroundColor: Colors.blue.shade900, child: Text('GZ', style: TextStyle(fontSize: 10.0),)),
              label: Text('Guangzhou'),
            ),
            Chip(
              avatar: CircleAvatar(
                  backgroundColor: Colors.blue.shade900, child: Text('SZ', style: TextStyle(fontSize: 10.0),)),
              label: Text('Shenzhen'),
            ),
          ],
        )
      ),
    );
  }
}
```
### 使用场景
对于一些需要按宽度或者高度，让child自动换行布局的场景可以使用，但是Wrap可以满足的场景，Flow一定可以实现，只不过会复杂很多，但是相对的会灵活以及高效很多。

点击这里查看 [源码](./web/main.dart)。

