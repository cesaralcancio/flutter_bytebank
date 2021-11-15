import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        body: ListaTransferencia(),
        appBar: AppBar(
          title: Text('Transferencias'),
        ),
        floatingActionButton:
            FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
      ),
    ));

class ListaTransferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ItemTransferencia('10', '1234'),
        ItemTransferencia('20', '4567'),
        ItemTransferencia('30', '9876'),
      ],
    );
  }
}

class ItemTransferencia extends StatelessWidget {
  final String valor;
  final String numeroConta;

  ItemTransferencia(this.valor, this.numeroConta);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(valor),
        subtitle: Text(numeroConta),
      ),
    );
  }
}
