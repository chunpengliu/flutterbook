## Radio

### 描述
A material design radio button.  
单选框，和checkbox一样本身不包含状态，当groupValue = value时代表选中状态
### 构造函数
```javascript
activeColor → Color - 激活时的颜色。
groupValue → T - 选择组的值。
onChanged → ValueChanged - 改变时触发。
value → T - 单选的值。
```


### 示例  
单选
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child:Container(
          height: 120.0,
          width: 120.0,
          color: Colors.blue[50],
          child: Align(
            alignment: Alignment.topRight,
            child: FlutterLogo(
              size: 60,
            ),
          ),
        )
      ), 
    );
  }
}
```

点击这里查看 [源码](./web/main.dart)。

