import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'padding',
    home: IMageDemo(),
  ));
}

class IMageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //居中显示
    return Scaffold(
      appBar: AppBar(title: Text('Padding'),),
      body: Center(
        child: Container(
          width: 300.0,
          height: 300.0,
          padding: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color:Colors.blue,
              width:8.0,
            ),
          ),
          child: Container(
            width: 200.0,
            height: 200.0,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color:Colors.red,
              width:8.0,
            ),
          ),
          child: FlutterLogo(),
          ),
        ),
      ),
    );
  }
}
