## Banner

### 描述
Displays a diagonal message above the corner of another widget.  
banner常用来展示app的运行模式

### 示例  
红色的是banner
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
  body: Center(
        child: Container(
          margin: const EdgeInsets.all(10.0),
          color: Colors.yellow,
          height: 100,
          child: ClipRect(
            child: Banner(
              message: "banner",
              location: BannerLocation.topEnd,
              color: Colors.red,
              child: Container(
                color: Colors.yellow,
                height: 100,
                child: Center(
                  child: Text("右上角的斜线是banner"),
                ),
              ),
            ),
          ),
        ),
      )
```

点击这里查看 [源码](./web/main.dart)。

