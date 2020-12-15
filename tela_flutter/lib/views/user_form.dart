import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserForm extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();
  bool _switchControl = false;

  void toggleSwitch(bool value) {
    if (_switchControl = true) {
      return toggleSwitch(true);
    } else
      return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            //Navigator.of(context).pop(); //RETORNAR A TELA ANTERIOR.
          },
        ),
        title: Text('Adicionar Usuario'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.save),
              onPressed: () {
                if (_formkey.currentState.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Usuário adicionado'),
                    duration: Duration(seconds: 2),
                  ));
                }
              })
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Form(
          key: _formkey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: "Nome"),
                validator: (value) {
                  if (value.isEmpty) return "O Campo é obrigatório";
                  if (value.length < 5)
                    return "O Campo precisa ter 5 ou mais caracteres";
                  if (value.length > 30)
                    return "O Campo não pode ultrapassar o limite de caracteres";
                  else
                    return null;
                },
                maxLength: 30,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'E-mail'),
                validator: (value) {
                  if (value.isEmpty) return "O Campo é obrigatório";
                  if (value.length < 5)
                    return "O Campo precisa ter 5 ou mais caracteres";
                  if (value.length > 254)
                    return "O Campo não pode ultrapassar o limite de caracteres";
                  else
                    return null;
                },
                maxLength: 254,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Telefone"),
              ),
              Row(
                children: <Widget>[
                  Text('Comissão por Venda ?'),
                  Switch(
                    onChanged: toggleSwitch,
                    value: _switchControl,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
