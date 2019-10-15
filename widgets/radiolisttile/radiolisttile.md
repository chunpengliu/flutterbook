## RadioListTile

### 描述
A ListTile with a Radio. In other words, a radio button with a label.  
单选框列表

### 构造函数
```javascript
value： 此 Radio 的 value 值
onChanged： 当选择此 radio 的时候 的回调。 参数就是 此 value 的值
groupValue： 如果 Radio 的 value 和 groupValue 一样 就 是此 Radio 选中 其他 设置为 不选中
activeColor： 选中的颜色
title： 标题， 具有代表性的就是 Text
subtitle： 副标题（在 title 下面）， 具有代表性的就是 Text
isThreeLine = false：// 是否是三行文本
true ： 副标题 不能为 null
false：如果没有副标题 ，就只有一行， 如果有副标题 ，就只有两行
dense： 是否密集垂直
secondary： 左边的一个控件
selected = false： text 和 icon 的 color 是否 是 activeColor 的颜色
controlAffinity = ListTileControlAffinity.platform：
ListTileControlAffinity.platform 根据不同的平台，来显示 对话框 的位置
ListTileControlAffinity.trailing：勾选在右，title 在中，secondary 在左
ListTileControlAffinity.leading ：勾选在左，title 在中，secondary 在右
```


### 示例  
单选
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript

class _HomeState extends State<MyHomePage> {
  String radioGroupVl = '1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          children: <Widget>[
            RadioListTile(
              title: const Text('北京'),
              value: '1',
              groupValue: radioGroupVl,
              onChanged: ( value) { setState(() { radioGroupVl = value; }); },
            ),
            RadioListTile(
              title: const Text('上海'),
              value: '2',
              groupValue: radioGroupVl,
              onChanged: ( value) { setState(() { radioGroupVl = value; }); },
            ),
            Text('你选中的值是${radioGroupVl}')
          ],
        )
      )
    );
  }
}
```

点击这里查看 [源码](./web/main.dart)。

