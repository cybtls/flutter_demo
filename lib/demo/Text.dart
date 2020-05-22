import 'package:flutter/material.dart';

class TextDemo extends StatefulWidget {
  @override
  _TextDemoState createState() => _TextDemoState();
}

class _TextDemoState extends State<TextDemo>
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
        title: Text('文本Text'),
      ),
      body: ListView(
        children: <Widget>[
          Text('我是最简单的文本'),
          Text(
            '我是居中的文本',
            textAlign: TextAlign.center,
            //这个居中是相对于它自身所在位置或者说它父级的宽度（不是相对于屏幕），如果父级的宽度变宽，它的位置也会改变
          ),
          Text(
            '我是限制了行数的文本' * 9,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            '我是有样式的文本',
            style: TextStyle(
              // backgroundColor: Colors.blue, //背景色 Colors是直接用官方给的颜色
              color: Color.fromRGBO(100, 100, 100,
                  1), //字体颜色 Color.fromRGBO（red,green,bule,opacity）可以自定义颜色，还有一个是Color.fromARGB
              fontSize: 15,
              height: 15, //该属性用于指定行高，但它并不是一个绝对值，而是一个因子，具体的行高等于fontSize*height
              decoration: TextDecoration.lineThrough, //下划线,上划线等
              decorationStyle: TextDecorationStyle.dashed, //上面那个属性的样式
            ),
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(text: "第一种样式"),
                TextSpan(
                  text: "第二种样式",
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
