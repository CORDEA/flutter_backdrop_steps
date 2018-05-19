import 'package:flutter/material.dart';

class Step1Page extends StatefulWidget {
  Step1Page({Key key}) : super(key: key);

  @override
  _BackdropPageState createState() => new _BackdropPageState();
}

class _BackdropPageState extends State<Step1Page>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new AnimationController(
        duration: const Duration(milliseconds: 100), value: 1.0, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          elevation: 0.0,
          title: new Text("Step1"),
          leading: new IconButton(
            onPressed: () {},
            icon: new AnimatedIcon(
              icon: AnimatedIcons.close_menu,
              progress: _controller.view,
            ),
          ),
        ),
        body: new Text("text"));
  }
}
