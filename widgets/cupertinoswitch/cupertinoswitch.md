## CupertinoSwitch

### 描述
An iOS-style switch.  
切换按钮组件，通常用于设置的选项里。Switch 的原点颜色，横条颜色都可以设置，此外原点可以以图片形式显示。
Switch本身不保持任何状态。相反，当Switch的状态发生变化时，小部件会调用onChanged回调。大多数使用Switch的小部件都会监听onChanged回调并使用新的value重建Switch以更新Switch的可视外观。


### 构造函数
```javascript
const CupertinoSwitch({
    Key key,
    @required this.value,
    @required this.onChanged,
    this.activeColor,
  }) 
```


### 示例  
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage> {
  bool _value = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body:  Center(
          child: CupertinoSwitch(
            value: _value,
            onChanged: (bool newValue) {
              print("the value is ${newValue}");
              setState(() {
                _value = newValue;
              });
            },
          )
        )
    );
  }
}
```

点击这里查看 [源码](./web/main.dart)。

