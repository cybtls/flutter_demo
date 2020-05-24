import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class HttpDemo extends StatefulWidget {
  @override
  _HttpDemoState createState() => _HttpDemoState();
}

class _HttpDemoState extends State<HttpDemo>
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
        title: Text('网络请求Http'),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text("发起http请求"),
            onPressed: () async {
              Dio dio = new Dio();
              var response = await dio.get("https://jsonplaceholder.typicode.com/todos/1");
              print(response);
            },
          ),
        ],
      ),
    );
  }
}
