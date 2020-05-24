import 'package:flutter/material.dart';

class RowDemo extends StatefulWidget {
  @override
  _RowDemoState createState() => _RowDemoState();
}

class _RowDemoState extends State<RowDemo> with SingleTickerProviderStateMixin {
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
        title: Text('行布局Row'),
        centerTitle: true,
      ),
      body: Row(
        mainAxisSize: MainAxisSize
            .max, //Row在主轴(这里的主轴是相对而言的，Row的主轴是水平的 Column的主轴是垂直的)方向占用的空间，
        mainAxisAlignment:
            MainAxisAlignment.start, //子组件在主轴的（同上）上的对齐方式，当mainAxisSize为min是没有意义
        verticalDirection: VerticalDirection
            .down, //表示Row纵轴（垂直）的对齐方向，默认是VerticalDirection.down，表示从上到下
        crossAxisAlignment: CrossAxisAlignment
            .start, //子组件在副轴（副轴是我自己喜欢的叫法）（row的是指垂直）的（同上）上的对齐方式，可以看到当我设置为start的时候，组件是顶上去的
        textDirection: TextDirection.ltr, //子组件布局顺序 ltr表示从左开始布局（默认），rtl表示从右开始布局
        children: <Widget>[
          Text('行布局'),
          RaisedButton(
            child: Text("我是简单的按钮"),
            onPressed: () {},
          ),
          Image(
            image: AssetImage('images/demo/img1.jpg'),
            width: 100.0,
          ),
          Image(
            image: AssetImage('images/demo/img1.jpg'),
            width: 100.0,
          ),
        ],
      ),
    );
  }
}
