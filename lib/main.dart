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
        Card(
          child: ListTile(
            leading: Icon(Icons.monetization_on),
            title: Text('100.00'),
            subtitle: Text('200.00'),
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.monetization_on),
            title: Text('300.00'),
            subtitle: Text('400.00'),
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.monetization_on),
            title: Text('500.00'),
            subtitle: Text('600.00'),
          ),
        ),
      ],
    );
  }
}
