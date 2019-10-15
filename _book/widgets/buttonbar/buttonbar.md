## ButtonBar

### 描述
An end-aligned row of buttons.  
水平排列的按钮组

### API
```javascript
ButtonBar({
	Key key,
	//子组件的间隔样式
	this.alignment = MainAxisAlignment.end,
	this.mainAxisSize = MainAxisSize.max,
	//子children
	this.children = const <Widget>[],
})

```


### 示例  
按钮横向排列对齐
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child:ButtonBar(
	  children: <Widget>[
	    FlatButton(
	      child: Text('按钮1'),
	      color: Colors.blue,
	      onPressed: () {/** */},
	    ),
	    FlatButton(
	      child: Text('按钮2'),
	      color: Colors.blue,
	      onPressed: () {/** */},
	    ),
	  ],
	)
      ), 
    );
  }
}
```

点击这里查看 [源码](./web/main.dart)。

