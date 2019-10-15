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
      home: MyHomePage(title: 'Banner Demo'),
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
    );
  }
}
