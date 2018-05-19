import 'package:flutter/material.dart';
import 'package:flutter_backdrop_steps/step1.dart';
import 'package:flutter_backdrop_steps/step2.dart';
import 'package:flutter_backdrop_steps/step3.dart';
import 'package:flutter_backdrop_steps/step4.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new SafeArea(
        child: new ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          children: <Widget>[
            new SizedBox(height: 32.0),
            new RaisedButton(
              child: new Text("Step1"),
              onPressed: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new Step1Page()));
              },
            ),
            new SizedBox(height: 16.0),
            new RaisedButton(
              child: new Text("Step2"),
              onPressed: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new Step2Page()));
              },
            ),
            new SizedBox(height: 16.0),
            new RaisedButton(
              child: new Text("Step3"),
              onPressed: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new Step3Page()));
              },
            ),
            new SizedBox(height: 16.0),
            new RaisedButton(
              child: new Text("Step4"),
              onPressed: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new Step4Page()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
