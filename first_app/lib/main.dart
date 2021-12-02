import 'package:flutter/material.dart';

// 앱 시작 부분
void main() => runApp(const MyApp());

// 시작 클래스. 머터리얼 디자인 앱 생성
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

// 시작 클래스가 실제로 표시하는 클래스
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = List.generate(100, (i) => i).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('제목'),
      ),
      body: SingleChildScrollView(
        child: ListBody(
          children: items.map((i) => Text('$i')).toList(),
        )
      )
    );
  }
}
