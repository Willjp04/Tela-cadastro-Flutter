import 'package:flutter/material.dart';

main() {
  runApp(YabiApp());
}

@override
class YabiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Adicionar Usuario'),
        ),
      ),
    );
  }
}
