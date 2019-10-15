## Checkbox

### 描述
A material design checkbox.  
Checkbox 是一个复选框组件，通常用于设置的选项里。


### API
```javascript
Checkbox(
    value: this.check,
    activeColor: Colors.blue,
    onChanged: (bool val) {
        // val 是布尔值
        this.setState(() {
            this.check = !this.check;
        });
    },
)
activeColor → Color - 激活时的颜色。
onChanged → ValueChanged - 改变时触发。
checkColor 选中时候的 Icon 颜色。
materialTapTargetSize 设置 tap 响应大小。
tristate → bool - 如果为 true，那么复选框的值可以是 true，false 或 null。
value → bool - 复选框的值，true 选中，false 不选中。
```


### 示例  
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage> {
  bool _value1 = true;
  bool _value2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
            Checkbox(
              value: _value1,
              onChanged: (bool newValue) {
                setState(() {
                  _value1 = newValue;
                });
              },
            ),
            Checkbox(
              value: _value2,
              onChanged: (bool newValue) {
                setState(() {
                  _value2 = newValue;
                });
              },
            ),
          ]
        )
      )
    );
  }
}
```

点击这里查看 [源码](./web/main.dart)。

