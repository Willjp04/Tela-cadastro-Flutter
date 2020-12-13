import 'package:flutter/material.dart';
import 'package:tela_flutter/views/user_form.dart';

main() {
  runApp(YabiApp());
}

@override
class YabiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yabi App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: UserForm(),
    );
  }
}
