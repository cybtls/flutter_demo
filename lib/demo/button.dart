import 'package:flutter/material.dart';

class ButtonDemo extends StatefulWidget {
  @override
  _ButtonDemoState createState() => _ButtonDemoState();
}

class _ButtonDemoState extends State<ButtonDemo>
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
        centerTitle: true,
        title: Text('按钮Button'),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text("我是简单的按钮"),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.thumb_up),
            onPressed: () {},
          ),
          RaisedButton.icon(
            //这个还有其他差不多样式 就是换个名字而已RaisedButton/OutlineButton/FlatButton
            icon: Icon(Icons.account_balance_wallet),
            label: Text("icon+文本"),
            onPressed: () {},
          ),
          FlatButton(
            color: Colors.blue,
            highlightColor: Colors.green[700],
            colorBrightness: Brightness.dark, //按钮主题 深色或浅色
            splashColor: Colors.grey,
            child: Text("没有icon自定义"),
            shape: RoundedRectangleBorder(//形状
              borderRadius: BorderRadius.circular(20.0),//圆角
            ),
            onPressed: () {},
          ),
          FlatButton.icon(
            color: Colors.blue,
            icon: Icon(Icons.thumb_up),
            highlightColor: Colors.blue[700],
            colorBrightness: Brightness.dark,
            splashColor: Colors.grey,
            label: Text("有icon自定义"),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
