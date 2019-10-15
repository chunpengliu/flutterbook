## RichText

### 描述
A paragraph of rich text.  
RichText能实现一段文本应用不同的样式。

### 构造函数
```javascript
RichText({
    Key key, //Widget的标识
    @required this.text,//文字片段，类型 InlineSpan，通常我们会用TextSpan（它是InlineSpan的子类） 
    this.textAlign = TextAlign.start,//文本的对齐方式，类型 TextAlign
    this.textDirection,//文字方向，类型 TextDirection
    this.softWrap = true,//bool类型 是否支持软换行符，false表示只有一行，水平无限延伸
    this.overflow = TextOverflow.clip,// 文字的截断方式，类型TextOverflow
    this.textScaleFactor = 1.0,//double类型，代表相对于当前字体大小的缩放因子，默认值为1.0
    this.maxLines,//int类型 显示的最大行数   
    this.locale,//用于选择用户语言和格式设置首选项的标识符   类型 Locale
    this.strutStyle,//使用的支柱风格  类型StrutStyle
    this.textWidthBasis = TextWidthBasis.parent,
  }) 
```
### 视频介绍
<iframe width="560" height="315" src="https://www.youtube.com/embed/rykDVh-QFfw" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### 示例  
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: Center(
            child: RichText(
          text: TextSpan(
            text: '这是 ',
            style: TextStyle(color: Colors.black, fontSize: 18.0),
            children: <TextSpan>[
              TextSpan(
                  text: '加粗 ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              TextSpan(text: '文本。'),
              TextSpan(
                text: '这是',
              ),
              TextSpan(text: '加大', style: TextStyle(fontSize: 22.0)),
              TextSpan(
                text: '文本',
              ),
              TextSpan(
                text: '这是',
              ),
              TextSpan(text: '红色 ', style: TextStyle(color: Colors.red)),
              TextSpan(
                text: '字。',
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

