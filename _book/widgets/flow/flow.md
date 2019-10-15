## Flow

### 描述
A widget that implements the flow layout algorithm.  
流式布局控件，和Wrap类似，可以实现更加个性化的需求，我们可以通过delegate属性自己设置子控件排列规则。

### 构造函数
```javascript
Flow({
    Key key,
    @required this.delegate,   //布局委托，接收一个FlowDelegate类型的值
    List<Widget> children = const <Widget>[],  //要显示的子控件
  })
```


### 示例  
对每个child按照给定的margin值，进行排列，如果超出一行，则在下一行进行布局。
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
const width = 50.0;
const height = 50.0;  
class _HomeState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Container(
        child: Flow(
          delegate: TestFlowDelegate(margin: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0)),
          children: <Widget>[
            Container(width: width, height: height, color: Colors.yellow,),
            Container(width: width, height: height, color: Colors.green,),
            Container(width: width, height: height, color: Colors.red,),
            Container(width: width, height: height, color: Colors.black,),
            Container(width: width, height: height, color: Colors.blue,),
            Container(width: width, height: height, color: Colors.lightGreenAccent,),
          ],
        )
      ),
    );
  }
}

class TestFlowDelegate extends FlowDelegate {
  EdgeInsets margin = EdgeInsets.zero;

  TestFlowDelegate({this.margin});
  @override
  void paintChildren(FlowPaintingContext context) {
    var x = margin.left;
    var y = margin.top;
    for (int i = 0; i < context.childCount; i++) {
      var w = context.getChildSize(i).width + x + margin.right;
      if (w < context.size.width) {
        context.paintChild(i,
            transform: Matrix4.translationValues(
                x, y, 0.0));
        x = w + margin.left;
      } else {
        x = margin.left;
        y += context.getChildSize(i).height + margin.top + margin.bottom;
        context.paintChild(i,
            transform: Matrix4.translationValues(
                x, y, 0.0));
        x += context.getChildSize(i).width + margin.left + margin.right;
      }
    }
  }

  @override
  bool shouldRepaint(FlowDelegate oldDelegate) {
    return oldDelegate != this;
  }
}
```
### 使用场景
Flow在一些定制化的流式布局中，有可用场景，但是一般写起来比较复杂，但胜在灵活性以及其高效。

点击这里查看 [源码](./web/main.dart)。

