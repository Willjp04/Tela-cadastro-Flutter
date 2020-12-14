import 'package:flutter/material.dart';

class UserForm extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Navigator.of(context).pop(); SALVAR E RETORNAR A TELA ANTERIOR.
          },
        ),
        title: Text('Adicionar Usuario'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.save),
              onPressed: () {
                if (_formkey.currentState.validate()) {}
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
                  if (value.isEmpty) return "O campo é obrigatório";
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
                  if (value.isEmpty) return "O campo é obrigatório";
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
            ],
          ),
        ),
      ),
    );
  }
}
