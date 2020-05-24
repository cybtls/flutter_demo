import 'package:flutter/material.dart';

class StackPositionedDemo extends StatefulWidget {
  @override
  _StackPositionedDemoState createState() => _StackPositionedDemoState();
}

class _StackPositionedDemoState extends State<StackPositionedDemo>
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
        title: Text('定位Stack'),
        centerTitle: true,
      ),
      body: Stack(
        alignment: AlignmentDirectional
            .bottomStart, //此参数决定如何去对齐没有定位（没有使用Positioned）或部分定位的子组件
        overflow: Overflow
            .visible, //此属性决定如何显示超出Stack显示空间的子组件 Overflow.clip(裁剪/隐藏) Overflow.visible（可见）
        textDirection: TextDirection.ltr, //这个和row布局一样
        fit: StackFit
            .loose, //此参数用于确定没有定位的子组件如何去适应Stack的大小 loose表示使用子组件的大小，expand表示扩伸到Stack的大小。
        children: <Widget>[
          Positioned(
            top: 100, //相对Stack的定位
            left: 10,
            width: 100,
            height: 100,
            child: Container(
              color: Colors.blueAccent,
            ),
          ),
          Positioned(
            //假如位置相同，写在后面的组件会覆盖前面的组件，上面设置了蓝色，这里设置了粉色，但是只能看见粉色
            top: 100,
            left: 10,
            width: 100,
            height: 100,
            child: Container(
              color: Colors.pinkAccent,
            ),
          ),
          Positioned(
            //覆盖了上面的一半
            top: 150,
            left: 10,
            width: 100,
            height: 100,
            child: Container(
              color: Colors.orangeAccent,
            ),
          ),
          Container(
            color: Colors.greenAccent,
            child: Text('我没有设置定位'),
          ),
        ],
      ),
    );
  }
}
