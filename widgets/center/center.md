## padding

### 描述
A widget that centers its child within itself.  
Center继承自Align，只不过是将alignment设置为Alignment.center，其他属性例如widthFactor、heightFactor，布局行为，都与Align完全一样


### 示例  
设置了蓝框居中对齐，还设置Flutter logo居中对齐。
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Container(
        height: 120.0,
        width: 120.0,
        color: Colors.blue[50],
        child: Center(
          child: FlutterLogo(
            size: 60,
          ),
        ),
      ))
    );
  }
```

点击这里查看 [源码](./web/main.dart)。

