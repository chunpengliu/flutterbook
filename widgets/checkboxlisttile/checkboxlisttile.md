## CheckboxListTile 

### 描述
A ListTile with a Checkbox. In other words, a checkbox with a label.  
CheckboxListTile 是一个 Checkbox 的上层封装，它的外观是提供类似设置页的选择组件，可设置图标和文字。




### 示例  
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage> {
  bool check = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: CheckboxListTile(
          secondary: const Icon(Icons.battery_alert),
          title: const Text('省电模式'),
          value: this.check,
          onChanged: (bool value) {
            setState(() {
              this.check = !this.check;
            });
          },
        ),
      )
    );
  }
}
```

点击这里查看 [源码](./web/main.dart)。

