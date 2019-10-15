## TimePicker

### 描述
Shows a dialog containing a material design time picker..  
一个时间组件，提供时间的选择，没有对应的组件，通过showTimePicker() 来实现。

### 构造函数
```javascript
Future<TimeOfDay> showTimePicker({
    @required BuildContext context,
    @required TimeOfDay initialTime
});
```

默认英文，需要自己添加国际化（flutter_localizations）
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child:Container(
          child: RaisedButton(
            child: Text('选择时间'),
            onPressed: () {
              // 调用函数打开
              showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
              ).then((val) {
                  print(val);
              }).catchError((err) {
                  print(err);
              });
            },
          ),
        )
      )
    );
  }
}
```

点击这里查看 [源码](./web/main.dart)。

