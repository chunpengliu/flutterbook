## padding

### 描述
A widget that insets its child by the given padding.  
一个基础的控件，功能非常单一，给子节点设置padding属性，设置内边距属性，内边距的空白区域，也是widget的一部分。
Flutter中并没有单独的Margin控件，在Container中有margin属性，Flutter中淡化了margin以及padding的区别，margin实质上也是由Padding实现的。


### 示例  
设置10px的padding，撑开了淡蓝色的container。
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
        child:Container(
          color: Colors.blue[50],
          child:  Padding(
            padding:  EdgeInsets.all(10.0),
            child: const Card(child:  Text('Hello World!')),
          )
        )
      ), 
    );
  }
```



点击这里查看 [源码](./web/main.dart)。

