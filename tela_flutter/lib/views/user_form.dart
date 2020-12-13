import 'package:flutter/material.dart';

class UserForm extends StatelessWidget {
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
                // Navigator.of(context).pop(); SALVAR E RETORNAR A TELA ANTERIOR.
              })
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Form(
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: "Nome"),
                validator: (value) {
                  if (value.isEmpty) return "O campo é obrigatório";
                  if (value.length > 30)
                    return "O campo não pode ultrapassar o limite";
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
                    return "O campo não pode ultrapassar o limite";
                  else
                    return null;
                },
                maxLength: 254,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Telefone"),
              ),
              RaisedButton(
                child: Text('Validar botões'),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
