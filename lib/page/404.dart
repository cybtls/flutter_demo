import 'package:flutter/material.dart';

class NotFind extends StatefulWidget {
  @override
  _NotFindState createState() => _NotFindState();
}

class _NotFindState extends State<NotFind> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('404'),
      ),
      body: Center(
        child: Text('页面已经丢失....'),
      ),
    );
  }
}
