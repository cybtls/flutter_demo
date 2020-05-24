import 'package:flutter/material.dart';

class ListViewDemo extends StatefulWidget {
  @override
  _ListViewDemoState createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo>
    with SingleTickerProviderStateMixin {
  List list = [
    {'name': '1'},
    {'name': '2'},
    {'name': '3'},
    {'name': '4'},
    {'name': '5'},
    {'name': '6'},
    {'name': '7'},
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text('滚动组件ListView'),
  //       centerTitle: true,
  //     ),
  //     body: ListView(
  //       scrollDirection: Axis.vertical, //滚动方向
  //       // padding: EdgeInsets.all(20.0), //内边距
  //       // itemExtent:10,
  //       // shrinkWrap: true,//该属性表示是否根据子组件的总长度来设置ListView的长度，默认值为false 。默认情况下，ListView的会在滚动方向尽可能多的占用空间。当ListView在一个无边界(滚动方向上)的容器中时，shrinkWrap必须为true。
  //       children: <Widget>[
  //         Container(
  //           height: 150,
  //           color: Colors.pinkAccent,
  //         ),
  //         Container(
  //           height: 150,
  //           color: Colors.greenAccent,
  //         ),
  //         Container(
  //           height: 150,
  //           color: Colors.blueAccent,
  //         ),
  //         Container(
  //           height: 150,
  //           color: Colors.black54,
  //         ),
  //         Container(
  //           height: 150,
  //           color: Colors.orangeAccent,
  //         ),
  //         Container(
  //           height: 150,
  //           color: Colors.cyanAccent,
  //         ),
  //       ],
  //     ),
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('滚动组件ListView'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: list.length, //数组长度
        itemBuilder: (context, index) {
          return Container(
            height: 150,
            color: Color.fromRGBO(200, 200, index * 30, 1),
            child: Text(list[index]['name']),
          );
        },
      ),
    );
  }
}
