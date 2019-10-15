## CircularProgressIndicator

### 描述
A material design circular progress indicator, which spins to indicate that the application is busy.   
圆形加载进度条

### API
```javascript
/**
 * 可以在外面包一层SizedBox，间接改变进度条的大小
 *const CircularProgressIndicator({
    Key key,
    double value,//0~1的浮点数，用来表示进度多少;如果 value 为 null 或空，则显示一个动画，否则显示一个定值
    Color backgroundColor,//背景颜色
    Animation<Color> valueColor,//animation类型的参数，用来设定进度值的颜色，默认为主题色
    this.strokeWidth = 4.0,//进度条宽度
    String semanticsLabel,
    String semanticsValue,
    })
 */
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
        child:CircularProgressIndicator()
      )
    );
  }
}
```

点击这里查看 [源码](./web/main.dart)。

