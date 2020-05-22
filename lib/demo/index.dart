import 'package:flutter/material.dart';

class DemoEntry extends StatefulWidget {
  @override
  _DemoEntryState createState() => _DemoEntryState();
}

class _DemoEntryState extends State<DemoEntry>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo'),
      ),
      body: ListView(
        children: <Widget>[
          RaisedButton(
            child: Text("Text Demo"),
            onPressed: () {
              Navigator.pushNamed(context, '/textDemo');
            },
          ),
          RaisedButton(
            child: Text("Button Demo"),
            onPressed: () {
              Navigator.pushNamed(context, '/buttonDemo');
            },
          ),
          RaisedButton(
            child: Text("ImgIcon Demo"),
            onPressed: () {
              Navigator.pushNamed(context, '/imgAndIcon');
            },
          ),
          RaisedButton(
            child: Text("Input Demo"),
            onPressed: () {
              Navigator.pushNamed(context, '/inputDemo');
            },
          ),
          RaisedButton(
            child: Text("Container Demo"),
            onPressed: () {
              Navigator.pushNamed(context, '/containerDemo');
            },
          ),
        ],
      ),
    );
  }
}
