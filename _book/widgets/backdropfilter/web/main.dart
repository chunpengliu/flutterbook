import 'package:flutter_web/material.dart';
import 'package:flutter_web_ui/ui.dart' as web_ui;


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'BackdropFilter Demo'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title)
      ),
      body: Center(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image(image:  NetworkImage('https://lorempixel.com/400/200/')),
            Center(
              child: ClipRect(  // <-- clips to the 200x200 [Container] below
                child: BackdropFilter(
                  filter: web_ui.ImageFilter.blur(
                    sigmaX: 5.0,
                    sigmaY: 5.0,
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    width: 100.0,
                    height: 100.0,
                    child: Text('Hello World'),
                  ),
                ),
              ),
            ),
          ],
        )
      )
    );
  }
}
