import 'package:flutter/material.dart';

class InputDemo extends StatefulWidget {
  @override
  _InputDemoState createState() => _InputDemoState();
}

class _InputDemoState extends State<InputDemo>
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
        title: Text('输入框input'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            TextField(
              autofocus: false,//是否有自动聚焦
              keyboardType: TextInputType.number, //输入框形式  文本、数字等
              onChanged: (value) {
                print(value);
                //赋值操作
              },
            ),
          ],
        ),
      ),
    );
  }
}
