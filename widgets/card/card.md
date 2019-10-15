## Card

### 描述
A material design card. A card has slightly rounded corners and a shadow.  
Align一般都是当做一个控件的属性，并没有拿出来当做一个单独的控件。Align本身实现的功能并不复杂，设置child的对齐方式，例如居中、居左居右等，并根据child尺寸调节自身尺寸。它能够实现的功能，Container都能实现。

### API
1.Card接受单个widget，但该widget可以是Row，Column或其他包含子级列表的widget
2.Card内容不能滚动
```javascript

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
        child: Card(
        elevation: 15.0, //设置阴影
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))), //设置圆角
          child: Column(
            // card只能有一个widget，但这个widget内容可以包含其他的widget
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title:
                    Text('标题', style: TextStyle(fontWeight: FontWeight.w500)),
                subtitle: Text('子标题'),
                leading: Icon(
                  Icons.restaurant_menu,
                  color: Colors.blue[500],
                ),
              ),
              Divider(),
              ListTile(
                title:
                    Text('内容一', style: TextStyle(fontWeight: FontWeight.w500)),
                leading: Icon(
                  Icons.contact_phone,
                  color: Colors.blue[500],
                ),
              ),
              ListTile(
                title: Text('内容二'),
                leading: Icon(
                  Icons.contact_mail,
                  color: Colors.blue[500],
                ),
              ),
            ],
          ),
        )
      )
    );
  }
}
```

点击这里查看 [源码](./web/main.dart)。

