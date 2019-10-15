## ConstrainedBox

### 描述
A widget that imposes additional constraints on its child.  
ConstrainedBox即创建一个Widget，该Widget对其子child施加额外的约束。之前在constrain也有简单使用，即该组件一般集成在constrain中使用。

### 构造函数
```javascript
  ConstrainedBox({
    Key key,
    @required this.constraints,
    Widget child
  })
[RenderBox]布局的不可变布局约束。
如果且仅当以下所有关系成立时，[Size]才会遵从[BoxConstraints]：
[minWidth] <= [Size.width] <= [maxWidth]
[minHeight] <= [Size.height] <= [maxHeight]
约束本身必须满足这些关系：
0.0 <= [minWidth] <= [maxWidth] <= [double.infinity]
0.0 <= [minHeight] <= [maxHeight] <= [double.infinity]
[double.infinity]是每个约束的合法值(比如想要获取最大的扩展宽度，可以将宽度值设为double.infinity)

BoxConstraints还定义了一些便捷的构造函数，用于快速生成特定限制规则的BoxConstraints，
如BoxConstraints.tight(Size size)，它可以生成给定大小的限制；
const BoxConstraints.expand()可以生成一个尽可能大的用以填充另一个容器的BoxConstraints。
```


### 示例  
宽高超过限制范围将失效
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: 30,
              minWidth: 30,
              maxHeight: 150,
              maxWidth: 150
            ),
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.blue
              ),
            ),
          )
      )
    );
  }
}
```

点击这里查看 [源码](./web/main.dart)。

