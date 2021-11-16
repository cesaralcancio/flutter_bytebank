import 'package:flutter/material.dart';
import 'package:flutter_bytebank/components/editor.dart';
import 'package:flutter_bytebank/models/transferencia.dart';

const tituloAppBar = 'Criando transferencia';

class FormularioTransferencia extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormularioTransferenciaState();
  }
}

class FormularioTransferenciaState extends State<FormularioTransferencia> {
  final TextEditingController _controllerNumeroConta = TextEditingController();
  final TextEditingController _controllerValor = TextEditingController();

  void _criaTransferencia(BuildContext context) {
    debugPrint('Clicou no confirmar');
    final int? numeroConta = int.tryParse(_controllerNumeroConta.text);
    final double? valor = double.tryParse(_controllerValor.text);
    if (numeroConta != null && valor != null) {
      final transferenciaCriada = Transferencia(valor, numeroConta);
      debugPrint('Criando transferencia');
      debugPrint('$transferenciaCriada');
      Navigator.pop(context, transferenciaCriada);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(tituloAppBar)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Editor(
                controlador: _controllerNumeroConta,
                rotulo: 'Número da conta',
                dica: '0000'),
            Editor(
                controlador: _controllerValor,
                rotulo: 'Valor',
                dica: '00.00',
                icone: Icons.monetization_on),
            ElevatedButton(
              onPressed: () => _criaTransferencia(context),
              child: Text('Confirmar'),
            )
          ],
        ),
      ),
    );
  }
}
