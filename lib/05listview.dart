import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Listview实例',
    home: IMageDemo(),
  ));
}

class IMageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //居中显示
    List<Widget> list = <Widget>[
      const ListTile(
        //标题
        title: Text(
          '一味堂饭店',
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
        ),
        subtitle: Text('昆明市建国大道3号'),
        //左侧图标
        leading: Icon(Icons.fastfood),
        iconColor: Colors.orange,
      ),
      const ListTile(
        title: Text(
          '长水机场',
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
        ),
        subtitle: Text('昆明市机场路T3航站楼'),
        //左侧图标
        leading: Icon(Icons.airplay),
        iconColor: Colors.blue,
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView布局实例'),
      ),
      body: Center(child: ListView(
        children: list,
      ),),
    );
  }
}
