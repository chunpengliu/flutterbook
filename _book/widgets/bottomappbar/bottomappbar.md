## BottomAppBar

### 描述
A container that is typically used with Scaffold.bottomNavigationBar, and can have a notch along the top that makes room for an overlapping FloatingActionButton.  
BottomAppBar经常用来自定义底部导航，配合FloatingActionButton可实现圆弧的导航外观。

### 示例  
图标在蓝框内靠右上对齐
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage> {
  
  int _index = 0;
  List<String> list =  List();
   @override
  void initState() {
    super.initState();
    list..add('1')..add('2')..add('3');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title)
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
              setState(() {
                _index = 2;
              });
          },
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: Center(
          child:Text(list[_index])
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.lightBlue,
          shape: CircularNotchedRectangle(),
          child: tabs(),
        ),
      );
  }

  Row tabs() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
         Container(
          child: IconButton(
            icon: Icon(Icons.home),
            color: Colors.white,
            onPressed: () {
              setState(() {
                _index = 0;
              });
            },
          ),
        ),
        IconButton(
          icon: Icon(Icons.edit_location),
          color: Colors.white,
          onPressed: () {
            setState(() {
              _index = 1;
            });
          },
        ),
      ],
    );
  }
}
```

点击这里查看 [源码](./web/main.dart)。

