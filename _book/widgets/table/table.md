## Table

### 描述
A widget that uses the table layout algorithm for its children.  
表格

### 构造函数
```javascript
Table({
  Key key,
  this.children = const <TableRow>[],
  this.columnWidths, // 设置每一列的宽度。
  this.defaultColumnWidth = const FlexColumnWidth(1.0), //默认的每一列宽度值，默认情况下均分。
  this.textDirection, //文字方向，一般无需考虑。
  this.border, //表格边框。
  this.defaultVerticalAlignment = TableCellVerticalAlignment.top, 
  /* 每一个cell的垂直方向的alignment。
	top：被放置在的顶部；
	middle：垂直居中；
	bottom：放置在底部；
	baseline：文本baseline对齐；
	fill：充满整个cell。
   */

  this.textBaseline, //defaultVerticalAlignment为baseline的时候，会用到这个属性。
})
```
### 视频介绍
<iframe width="560" height="315" src="https://www.youtube.com/embed/_lbE0wsVZSw" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### 示例  
一个三行四列的表格，第一三行宽度为50，第二行宽度为100。
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Container(
        child: Table(
          columnWidths: const <int, TableColumnWidth>{
            0: FixedColumnWidth(50.0),
            1: FixedColumnWidth(100.0),
            2: FixedColumnWidth(50.0),
            3: FixedColumnWidth(100.0),
          },
          border: TableBorder.all(color: Colors.black, width: 1.0, style: BorderStyle.solid),
          children: const <TableRow>[
            TableRow(
              children: <Widget>[
                Text('表头A'), Text('表头B'), Text('表头C'),
              ],
            ),
            TableRow(
              children: <Widget>[
                Text('A2'), Text('B2'), Text('C2'),
              ],
            ),
            TableRow(
              children: <Widget>[
                Text('A3'), Text('B3'), Text('C3'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
```

点击这里查看 [源码](./web/main.dart)。

