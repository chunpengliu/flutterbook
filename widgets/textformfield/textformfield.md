## TextFormField 

### 描述
A widget that aligns its child within itself and optionally sizes itself based on the child's size.  
TextFormField 基于 TextField 封装了一层，唯一多出来的属性时 validator，接收一个方法，并且方法的参数中会传入 value 当前表单的值，能够做到数据的前置校验。

### 构造函数
```javascript
new TextFormField(
	autocorrect: false, // 是否自动校正
	autofocus: false, //自动获取焦点
	enabled: true, // 是否启用
	inputFormatters: [], //对输入的文字进行限制和校验
	keyboardType: TextInputType.text, //获取焦点时,启用的键盘类型
	maxLines: 2, // 输入框最大的显示行数
	maxLength: 3, //允许输入的字符长度/
	maxLengthEnforced: false, //是否允许输入的字符长度超过限定的字符长度
	obscureText: true, // 是否隐藏输入的内容
	onChanged: (newValue) {
	    // print(newValue); // 当输入内容变更时,如何处理
	},
	onSubmitted: (value) {
	    // print("whar"); // 当用户确定已经完成编辑时触发
	},
	style: new TextStyle(
	    color: new Color(Colors.amberAccent.green)), // 设置字体样式
	textAlign: TextAlign.center, //输入的内容在水平方向如何显示
	decoration: new InputDecoration(
	    labelText: "城市",
	    icon: new Icon(Icons.location_city),
	    border: new OutlineInputBorder(), // 边框样式
	    helperText: 'required',
	    hintText: '请选择你要投保的城市',
	    prefixIcon: new Icon(Icons.android),
	    prefixText: 'Hello'),

	validator: validator: (val) { //接收一个方法，并且方法的参数中会传入
                    return val.length < 4 ? "密码长度错误" : null;
                  }
)

```


### 示例  
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                hintText: '电话号码',
              ),
              validator: (value) {
                RegExp reg =  RegExp(r'^\d{11}$');
                if (!reg.hasMatch(value)) {
                  return '请输入11位手机号码';
                }
                return null;
              },
            )
          ],
        )
      )
    );
  }
}
```

点击这里查看 [源码](./web/main.dart)。

