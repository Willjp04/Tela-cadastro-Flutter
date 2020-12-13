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
          body: Column(
            children: <Widget>[
              TextFormField(validator: (value) {
                if (value.isEmpty) return "O campo é obrigatório";
                if (value.length > 30)
                  return "O campo não pode ter mais que 30 carácteres";
                else
                  return null;
              })
            ],
          )),
    );
  }
}
