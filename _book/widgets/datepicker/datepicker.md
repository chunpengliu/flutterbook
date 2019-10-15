## DatePicker

### 描述
Shows a dialog containing a material design date picker.  
一个日期组件，提供日期的选择，没有对应的组件，通过showDatePicker() 来实现。

### 构造函数
```javascript
Future<DateTime> showDatePicker ({
    @required BuildContext context, // 上下文
    @required DateTime initialDate, // 初始日期
    @required DateTime firstDate,   // 日期范围，开始
    @required DateTime lastDate,    // 日期范围，结尾
    SelectableDayPredicate selectableDayPredicate,
    DatePickerMode initialDatePickerMode: DatePickerMode.day,
    Locale locale,                  // 国际化
    TextDirection textDirection,
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
            child: Text('选择日期'),
            onPressed: () {
              // 调用函数打开
              showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now().subtract(Duration(days: 30)), // 减 30 天
                  lastDate: DateTime.now().add(Duration(days: 30)),       // 加 30 天
              ).then((DateTime val) {
                    print(val);   // 2019-10-15 00:00:00.000
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

