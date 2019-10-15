## IndexedStack

### 描述
A Stack that shows a single child from a list of children. 
IndexedStack继承自Stack，它的作用是显示第index个child，其他child都是不可见的。所以IndexedStack的尺寸永远是跟最大的子节点尺寸一致

### 构造函数
```javascript
IndexedStack({
	Key key,
	AlignmentGeometry alignment = AlignmentDirectional.topStart,
	TextDirection textDirection,
	StackFit sizing = StackFit.loose,
	this.index = 0,
	List<Widget> children = const <Widget>[],
})

```


### 示例  
通过+号控制index，显示层级
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: IndexedStack(
        index: _index,
        alignment: Alignment.center,
        children: <Widget>[
          Text("第一层"),
          Container(
            width: 100.0,
            height: 100.0,
            color: Colors.blue,
            child:Text('第二层')
          ),
          Text("第三层"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
              setState(() {
                _index ++;
                if (_index > 2) {
                  _index = 0;
                }
              });
          },
          child: Icon(Icons.add),
        ),
    );
  }
}
```
使用场景：比如幻灯片轮播，如果需要展示一堆控件中的一个，可以使用IndexedStack。有一定的使用场景，但是也有控件可以实现其功能，只不过操作起来可能会复杂一些。

点击这里查看 [源码](./web/main.dart)。

