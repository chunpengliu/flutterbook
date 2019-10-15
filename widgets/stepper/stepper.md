## Stepper

### 描述
A material stepper widget that displays progress through a sequence of steps.  
步骤条组件，是用来约束用户操作的，第一步完成后才能进入下一步。所有步骤都完成，才可进行提交操作。

### 常见属性
```javascript
currentStep → int - 步骤位置。
onStepCancel → VoidCallback - 点击 cancel 时触发。
onStepContinue → VoidCallback - 点击 continue 时触发。
onStepTapped → ValueChanged - 状态改变时触发。
steps → List - 步骤内容。
type → StepperType - 摆放方向，默认是垂直的，可以设置为水平的。
```


### 示例  
<iframe src="./web/index.html" width="280px" height="500px" frameborder="0" scrolling="no"></iframe>

### 主要代码
```javascript
class _HomeState extends State<MyHomePage> {
  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body:  Center(
        child:  Stepper(
          currentStep: _currentStep,
          onStepContinue: () {
            if (_currentStep >= 3) return;
            setState(() {
              _currentStep += 1;
            });
          },
          onStepCancel: () {
            if (_currentStep <= 0) return;
            setState(() {
              _currentStep -= 1;
            });
          },
          // 自定义按钮
          controlsBuilder:(BuildContext context, {VoidCallback onStepContinue, VoidCallback onStepCancel}){
            return Row(
              children: <Widget>[
                FlatButton(
                  onPressed: onStepContinue,
                  child: const Text('下一步'),
                  color: Colors.blue
                ),
                FlatButton(
                  onPressed: onStepCancel,
                  child: const Text('上一步'),
                ),
              ],
            );
          },
          steps: <Step>[
            Step(
                title: Text('第一步'),
                content: Text('第一步内容'),
                state: StepState.complete,
                isActive: true,
                subtitle: Text('第一步小标题'),
            ),
            Step(
                title: Text('第二步'),
                content: Text('第二步内容'),
            ),
            Step(
                title: Text('第三步'),
                content: Text('第三步内容'),
            )
          ],
        )
      )
    );
  }
}
```

点击这里查看 [源码](./web/main.dart)。

