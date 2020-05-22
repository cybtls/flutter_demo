import 'package:flutter/material.dart';

class ImgAndIcon extends StatefulWidget {
  @override
  _ImgAndIconState createState() => _ImgAndIconState();
}

class _ImgAndIconState extends State<ImgAndIcon>
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
        title: Text('图片和icon'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image(
              image: AssetImage('images/demo/img1.jpg'),
              width: 100.0,
            ),
            Image.asset(
              //等同于上面的写法
              "images/demo/img2.jpg",
              width: 100.0,
            ),
            Image.network(
              //引用网络的
              'https://cdn.jsdelivr.net/gh/flutterchina/website@1.0/images/flutter-mark-square-100.png',
            ),
            Icon(Icons.home),
            Icon(
              Icons.home,
              color: Colors.blueAccent,
              size: 100,
            ),
          ],
        ),
      ),
    );
  }
}
