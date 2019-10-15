## Chip

### 描述
A material design chip.  
碎片，一般是用作标签

### API
```javascript
Chip({
    Key key,
    this.avatar,//标签左侧Widget，一般为小图标
    @required this.label,//标签
    this.labelStyle,
    this.labelPadding,
    this.deleteIcon,//删除图标
    this.onDeleted,//删除回调，为空时不显示删除图标
    this.deleteIconColor,//删除图标的颜
    this.deleteButtonTooltipMessage,//删除按钮的tip文字
    this.shape,//形状.默认两端是半圆形
    this.clipBehavior = Clip.none
    this.backgroundColor,//背景颜色
    this.padding,
    this.materialTapTargetSize,//设置为MaterialTapTargetSize.shrinkWrap时，clip距顶部距离为0；设置为MaterialTapTargetSize.padded时距顶部有一个距离
})
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
        child: Chip(
          label: Text("家庭住址", 
            style: TextStyle(fontSize: 15.0,color: Color(0xff333333)),),
          labelPadding: EdgeInsets.only(left: 3.0),
          avatar: Icon(Icons.home, color: Colors.blue,),
          backgroundColor: Color(0xfff1f1f1),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0)
          ),
        )
      )
    );
  }
}
```

点击这里查看 [源码](./web/main.dart)。

