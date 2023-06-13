import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clicker App',
      home: ClickerPage(),
    );
  }
}

class ClickerPage extends StatefulWidget {
  @override
  _ClickerPageState createState() => _ClickerPageState();
}

class _ClickerPageState extends State<ClickerPage> {
  int _count = 0;
  bool _isEnabled = true;

  void _incrementCount() {
    if (!_isEnabled) return;

    setState(() {
      _count++;
      if (_count == 10) {
        // 当计数器达到 10 时，显示一个对话框。
        showDialog(
            context: context,
            builder: (BuildContext context) => AlertDialog(
                  title: Text('恭喜，你成功了！'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: Text('确定'),
                    ),
                  ],
                )).then((_) {
          setState(() {
            // 清空计数器并禁用按钮。
            _count = 0;
            _isEnabled = false;
          });
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clicker App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_count',
              style: TextStyle(fontSize: 72.0),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _incrementCount,
              child: Text('Click me!'),
              // 根据按钮是否可用修改背景色。
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (!_isEnabled) {
                      return Colors.grey;
                    }
                    return Colors.blue;
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}