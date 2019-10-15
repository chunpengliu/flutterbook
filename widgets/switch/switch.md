## Switch

### 描述
A material design switch.  
切换按钮组件，通常用于设置的选项里。Switch 的原点颜色，横条颜色都可以设置，此外原点可以以图片形式显示。
Switch本身不保持任何状态。相反，当Switch的状态发生变化时，小部件会调用onChanged回调。大多数使用Switch的小部件都会监听onChanged回调并使用新的value重建Switch以更新Switch的可视外观。


### 常用属性
```javascript
activeColor → Color - 激活时原点的颜色。
activeThumbImage → ImageProvider - 原点还支持图片，激活时的效果。
activeTrackColor → Color - 激活时横条的颜色。
inactiveThumbColor → Color - 非激活时原点的颜色。
inactiveThumbImage → ImageProvider - 非激活原点的图片效果。
inactiveTrackColor → Color - 非激活时横条的颜色。
onChanged → ValueChanged - 改变时触发。
value → bool - 切换按钮的值。
```


### 示例  
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage> with SingleTickerProviderStateMixin{
  bool _value = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body:  Center(
          child: Switch(
            value: _value,
            onChanged: (bool newValue) {
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

