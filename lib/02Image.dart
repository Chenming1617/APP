import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: '我弄了好久才写出来，这本书教的一点都不详细',
    home: IMageDemo(),
  ));
}

class IMageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //居中显示
    return Center(
      child: Image.network(
        'https://img0.baidu.com/it/u=3160322300,3594479676&fm=253&fmt=auto&app=138&f=JPEG?w=749&h=500',
        fit: BoxFit.contain,
      ),
    );
  }
}
