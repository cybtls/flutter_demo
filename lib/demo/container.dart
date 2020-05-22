import 'package:flutter/material.dart';

class ContainerDemo extends StatefulWidget {
  @override
  _ContainerDemoState createState() => _ContainerDemoState();
}

class _ContainerDemoState extends State<ContainerDemo>
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
        title: Text('容器Container'),
        centerTitle: true,
      ),
      body: Container(
        width: 100,
        height: 100,
        // margin: EdgeInsets.all(10),//外边距,这种是全部
        // margin: EdgeInsets.only(left: 200, top: 20), //这种是单独的
        margin: EdgeInsets.fromLTRB(10, 20, 30, 40), //这种是四个
        padding: EdgeInsets.all(10), //内边距，同上
        // color: Colors.blueAccent, //背景色，记得这个会和decoration里面的color冲突，如果有decoration就需要在decoration里面设置，不能在外面设置
        // foregroundDecoration: BoxDecoration(//也是装饰，但是会绘制在 child 之上，也就是会覆盖 child（很少用到）
        //   color: Colors.blue,
        // ),
        decoration: BoxDecoration(
          color: Colors.greenAccent, //背景色
          border: Border.all(color: Colors.blueAccent, width: 5), //全部
          // border: Border(
          //   top: BorderSide(color: Colors.pinkAccent, width: 5),//单个
          //   right: BorderSide(color: Colors.blueAccent, width: 5),
          // ),
          borderRadius: BorderRadius.all(
            //全部
            Radius.circular(10),
          ),
          // borderRadius: BorderRadius.only(//单个
          //   topLeft: Radius.circular(10),
          //   bottomRight: Radius.circular(20),
          // ),
          // gradient: LinearGradient(
          //   //背景渐变
          //   colors: [Colors.red, Colors.green, Colors.blue],
          // ),
          boxShadow: [
            BoxShadow(
              color: Colors.pinkAccent,
              blurRadius: 25.0, //延伸距离,会有模糊效果
              offset: Offset(10.0, -5.0), //X轴 Y轴偏移量
              spreadRadius: 9.0, //延伸距离,不会有模糊效果
            )
          ],
        ),
        child: Text('文本'), //子元素
      ),
    );
  }
}
