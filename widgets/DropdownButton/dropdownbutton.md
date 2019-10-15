## DropdownButton

### 描述
A material design button for selecting from a list of items.  
Material 风格的下拉菜单按钮

### API
```javascript
DropdownButton({
	Key key,
	//要显示的列表
	List<DropdownMenuItem<T>> @required this.items,
	//下拉菜单选中的值（注意：在初始化时，要么为null，这时显示默认hint的值；
	// 如果自己设定值，则值必须为列表中的一个值，如果不在列表中，会抛出异常）
	T value,
	//默认显示的值
	Widget hint,
	Widget disabledHint,
	//选中时的回调
	ValueChanged<T>  @required this.onChanged,
	this.elevation = 8,
	this.style,
	this.iconSize = 24.0,
	this.isDense = false,
	this.isExpanded = false,
  })
```


### 示例  

<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage> {
  String dropdownValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: DropdownButton<String>(
          hint: Text("请选择城市"),
          value: dropdownValue,
          onChanged: (String newValue) {
            setState(() {
              dropdownValue = newValue;
            });
          },
          items: <String> ["北京", "上海", "广州", "深圳"]
            .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            })
            .toList(),
        )
      )
    );
  }
}
```

点击这里查看 [源码](./web/main.dart)。

