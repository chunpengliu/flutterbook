## SizedBox

### 描述
A box with a specified size.  
能强制子控件具有特定宽度、高度或两者都有，使子控件设置的宽高失效。


### 构造函数
```javascript
 const SizedBox({
  Key key,
  this.width,
  this.height,
  Widget child
 })
```
### 视频介绍
<iframe width="560" height="315" src="https://www.youtube.com/embed/EHPu_DzRfqA" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### 示例  
元素原本宽200，高200，被sizedbox束缚
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: SizedBox(
          width: 100.0,
          height: 100.0,
          child: Container(
            width: 200.0,
            height: 200.0,
            color: Color(0xffff0000),
          ),
        )
      )
    );
  }
}
```
### 使用场景
这个控件，很多场景可以使用。但是，可以替代它的控件也有不少，例如Container、ConstrainedBox等。而且SizedBox就是ConstrainedBox的一个特例。

点击这里查看 [源码](./web/main.dart)。

