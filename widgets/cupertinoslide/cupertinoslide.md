## CupertinoSlide

### 描述
An iOS-style slider.  
iOS风格的拖动条。可用于数量的选择。
可用于从连续值或离散值集中进行选择。默认值是使用从min到max的连续值范围。要使用离散值，使用divisions的非空值，它表示离散间隔的数量。
例如，如果min为0.0max为50.0且divisions为5，则可以采用离散值0.0,10.0,20.0,30.0,40.0和50.0的值。

### 构造函数
```javascript
Slider 各部分的术语是：
thumb - 用户拖动时水平滑动的形状。
track - 滑块拇指滑过的线。
value - 当用户拖动拇指指示所选值时弹出的形状。
active - 滑块的“活动”一侧是拇指和最小值之间的一侧。
inactive - 滑块的“非活动”侧是拇指和最大值之间的一侧。

Slider 有以下常用属性：
activeColor → Color - 激活时的颜色。
divisions → int - 离散部分的数量。
inactiveColor → Color - 滑块轨道的非活动部分的颜色。
label → String 滑块处于活动状态时显示在滑块上方的标签。
max → double - 用户可以选择的最大值。
min → double - 用户可以选择的最小值。
onChanged → ValueChanged - 改变时触发。
onChangeEnd → ValueChanged - 改变后触发。
onChangeStart → ValueChanged - 改变前触发。
value → double - 滑块的值。
```


### 示例  
拖动圆点
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage> {
  double sliderVl = 20.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body:  Center(
        child: CupertinoSlider(
          value: sliderVl,
          min: 0.0,
          max: 100.0,
          onChanged: (value){
            setState(() {
              sliderVl = value.roundToDouble();
            });
          },
        ),
      )
    );
  }
}
```

点击这里查看 [源码](./web/main.dart)。

