## Baseline

### 描述
A widget that positions its child according to the child's baseline.  
根据子项的基线对它们的位置进行定位的widget。

### 构造函数
```javascript
Baseline({
  Key key,
  @required this.baseline,
  @required this.baselineType,
  Widget child
})
```


### 示例  
不同字号的文字对齐
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Baseline(
              baseline: 50.0,
              baselineType: TextBaseline.alphabetic,
              child: Text(
                '20号字体',
                style: TextStyle(
                  fontSize: 20.0,
                  textBaseline: TextBaseline.alphabetic,
                ),
              ),
            ),
            Baseline(
              baseline: 50.0,
              baselineType: TextBaseline.alphabetic,
              child: Container(
                width: 30.0,
                height: 30.0,
                color: Colors.red,
              ),
            ),
            Baseline(
              baseline: 50.0,
              baselineType: TextBaseline.alphabetic,
              child:  Text(
                '40号字体',
                style:  TextStyle(
                  fontSize: 40.0,
                  textBaseline: TextBaseline.alphabetic,
                ),
              ),
            ),
          ],
        )
      )
    );
  }
}
```
### 使用场景
跟字符对齐相关的会用到。

点击这里查看 [源码](./web/main.dart)。

