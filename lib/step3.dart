import 'package:flutter/material.dart';

class Step3Page extends StatefulWidget {
  Step3Page({Key key}) : super(key: key);

  @override
  _BackdropPageState createState() => new _BackdropPageState();
}

class _BackdropPageState extends State<Step3Page>
    with SingleTickerProviderStateMixin {
  static const _PANEL_HEADER_HEIGHT = 32.0;

  AnimationController _controller;

  bool get _isPanelVisible {
    final AnimationStatus status = _controller.status;
    return status == AnimationStatus.completed ||
        status == AnimationStatus.forward;
  }

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

  Widget _buildStack(BuildContext context, BoxConstraints constraints) {
    final ThemeData theme = Theme.of(context);
    return new Container(
      color: theme.primaryColor,
      child: new Stack(
        children: <Widget>[
          new Center(
            child: new Text("base"),
          ),
          new Material(
            borderRadius: const BorderRadius.only(
                topLeft: const Radius.circular(16.0),
                topRight: const Radius.circular(16.0)),
            elevation: 12.0,
            child: new Column(children: <Widget>[
              new Container(
                height: _PANEL_HEADER_HEIGHT,
                child: new Center(child: new Text("panel")),
              ),
              new Expanded(child: new Center(child: new Text("content")))
            ]),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        title: new Text("Step3"),
        leading: new IconButton(
          onPressed: () {
            _controller.fling(velocity: _isPanelVisible ? -1.0 : 1.0);
          },
          icon: new AnimatedIcon(
            icon: AnimatedIcons.close_menu,
            progress: _controller.view,
          ),
        ),
      ),
      body: new LayoutBuilder(
        builder: _buildStack,
      ),
    );
  }
}
