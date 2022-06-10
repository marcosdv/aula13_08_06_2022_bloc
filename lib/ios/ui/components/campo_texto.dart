import 'package:flutter/cupertino.dart';

class CampoTexto extends StatelessWidget {
  final TextEditingController controller;
  final String texto;

  const CampoTexto(this.controller, this.texto, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: CupertinoTextField(
        controller: controller,
        keyboardType: TextInputType.number,
        placeholder: texto,
      ),
    );
  }
}