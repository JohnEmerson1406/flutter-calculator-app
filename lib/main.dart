import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(title: 'Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  Widget buildButton() {
    return new Expanded(
        child: new OutlineButton(
          child: new Text("1"),
            onPressed: () => {},
        ),
    );
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: new Container(

        child: new Column(children: <Widget>[

          new Text("0"),

          new Expanded(
            child: new Divider(),
          ),


          new Column(children: [
            new Row(children: [
              buildButton(),
              buildButton(),
              buildButton(),
              buildButton() 
            ]),

            new Row(children: [
              buildButton(),
              buildButton(),
              buildButton(),
              buildButton() 
            ]),

            new Row(children: [
              buildButton(),
              buildButton(),
              buildButton(),
              buildButton() 
            ]),

            new Row(children: [
              buildButton(),
              buildButton(),
              buildButton(),
              buildButton() 
            ]),
            
            new Row(children: [
              buildButton(),
              buildButton(),
              buildButton(),
              buildButton() 
            ]),
          ])
        ],
      )));
  }
}
