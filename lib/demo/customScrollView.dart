import 'package:flutter/material.dart';

class CustomScrollViewDemo extends StatefulWidget {
  @override
  _CustomScrollViewDemoState createState() => _CustomScrollViewDemoState();
}

class _CustomScrollViewDemoState extends State<CustomScrollViewDemo>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          expandedHeight: 150, //顶部最大高度
          floating: true, //true的时候，当往下滑，顶部的expandedHeight就会改变，不需要到最顶部才会改变
          snap: false,
          pinned: true,
          title: Text('CustomScrollView'),
          centerTitle: true,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('你好'),
            collapseMode: CollapseMode.parallax,
            background: FlutterLogo(),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Container(
                padding: EdgeInsets.all(15),
                child: Text(index.toString()),
              );
            },
            childCount: 50,
          ),
        )
      ],
    ));
  }
}
