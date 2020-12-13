import 'package:flutter/material.dart';

class UserForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: Text('Adicionar Usuario'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.save), onPressed: () {}
              //RETORNAR A TELA ANTERIOR
              )
        ],
      ),
    );
  }
}
