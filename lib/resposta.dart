import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionada;
  const Resposta(this.texto, this.quandoSelecionada, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
            textStyle: MaterialStateProperty.all(
                const TextStyle(color: Colors.white))),
        onPressed: quandoSelecionada,
        child: Text(texto),
      ),
    );
  }
}
