import 'package:flutter/material.dart';

class ColumnDemo extends StatefulWidget {
  @override
  _ColumnDemoState createState() => _ColumnDemoState();
}

class _ColumnDemoState extends State<ColumnDemo>
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
        title: Text('列布局Column'),
        centerTitle: true,
      ),
      body: 
      Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,//我这里相对上面的row布局换了参数
        crossAxisAlignment: CrossAxisAlignment.center,//我这里相对上面的row布局换了参数
        textDirection: TextDirection.ltr,
        children: <Widget>[
          Text('列布局'),
          RaisedButton(
            child: Text("我是简单的按钮"),
            onPressed: () {},
          ),
          Image(
            image: AssetImage('images/demo/img2.jpg'),
            width: 100.0,
          ),
          Image(
            image: AssetImage('images/demo/img2.jpg'),
            width: 100.0,
          ),
        ],
      ),
    );
  }
}
