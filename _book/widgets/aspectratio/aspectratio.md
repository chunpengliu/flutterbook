## aspectRatio

### 描述
A widget that attempts to size the child to a specific aspect ratio.  
AspectRatio的作用是调整child到设置的宽高比.




### 示例  
示例代码是定义了一个高度为200的区域，内部AspectRatio比率设置为1.33，最终AspectRatio的是宽266高200的一个区域。
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title)
      ),
      body: Center(
        child: Container(
          height: 200.0,
          child:  AspectRatio(
            aspectRatio: 4 / 3,
            child:  Container(
              child:  Text("宽高比4:3", 
              style: TextStyle(
                color: Colors.white
              )
            ),
            color: Colors.red,
            )
          )
        )
      )
    );
  }
```

点击这里查看 [源码](./web/main.dart)。

