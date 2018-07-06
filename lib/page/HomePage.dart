import 'package:flutter/material.dart';
import 'package:codelang/widget/Demo1.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new HomeState();
  }
}

class HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        body: new Center(child: new RaisedButton(onPressed: _pushPage,child: new Text("跳转"))),
      ),
    );
  }
  _pushPage() {
//    Navigator.of(context).pushNamed("/demo1");
    Navigator.of(context).push(new MaterialPageRoute(builder: (context) {
      return new Demo1();
    },));
  }
}