import 'package:flutter/material.dart';

class GridViewDemo extends StatefulWidget {
  @override
  _GridViewDemoState createState() => _GridViewDemoState();
}

class _GridViewDemoState extends State<GridViewDemo>
    with SingleTickerProviderStateMixin {
  List list = [
    Icons.ac_unit,
    Icons.airport_shuttle,
    Icons.all_inclusive,
    Icons.tag_faces,
    Icons.beach_access,
    Icons.cake,
    Icons.free_breakfast,
  ];

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
        title: Text('网格滚动GridView'),
        centerTitle: true,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1.0,
        ),
        itemCount: list.length,
        itemBuilder: (context, index) {
          // return Text(list[index].toString()+'222');
          return Icon(list[index]);
        },
      ),
      // GridView(
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //       crossAxisCount: 3, //横轴三个子widget
      //       childAspectRatio: 1.0 //子元素在横轴长度和主轴长度的比例。由于crossAxisCount指定后，子元素横轴长度就确定了，然后通过此参数值就可以确定子元素在主轴的长度
      //       ),
      //   children: <Widget>[
      //     Icon(Icons.ac_unit),
      //     Icon(Icons.airport_shuttle),
      //     Icon(Icons.all_inclusive),
      //     Icon(Icons.beach_access),
      //     Icon(Icons.cake),
      //     Icon(Icons.free_breakfast)
      //   ],
      // ),
      //     GridView.count(//和上面相同 写法不一样而已
      //   crossAxisCount: 3,
      //   childAspectRatio: 1.0,
      //   children: <Widget>[
      //     Icon(Icons.ac_unit),
      //     Icon(Icons.airport_shuttle),
      //     Icon(Icons.all_inclusive),
      //     Icon(Icons.beach_access),
      //     Icon(Icons.cake),
      //     Icon(Icons.free_breakfast),
      //   ],
      // ),
    );
  }
}
