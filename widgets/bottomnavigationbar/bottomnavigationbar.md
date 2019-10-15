## bottomnavigationbar

### 描述
A material widget that’s displayed at the bottom of an app for selecting among a small number of views, typically between three and five..  
通用底部导航栏

### 示例  
图标在蓝框内靠右上对齐
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage> {
  int _index = 0;
  List<String> list = List();
  @override
  void initState() {
    super.initState();
    list..add('1')..add('2')..add('3');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(child: Text(list[_index])),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('首页'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text('列表'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            title: Text('信息'),
          ),
        ],
        currentIndex: _index,
        selectedItemColor: Colors.amber[800],
        onTap: (int index) {
          setState(() {
            _index = index;
          });
        },
      ),
    );
  }
}
```

点击这里查看 [源码](./web/main.dart)。

