import 'package:aula13_08_06_2022_bloc/blocs/notas_bloc.dart';
import 'package:aula13_08_06_2022_bloc/ios/ui/components/campo_texto.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final notasBloc = NotasBloc();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Minhas Notas - iOS'),
      ),
      child: ListView(
        children: [
          CampoTexto(notasBloc.nota1Controller, 'Nota 1º Bimestre'),
          CampoTexto(notasBloc.nota2Controller, 'Nota 2º Bimestre'),

          CupertinoButton(
            child: const Text('Calcular'),
            onPressed: () {
              setState(() { notasBloc.calcular(); });
            }
          ),

          const SizedBox(height: 44,),

          Text(notasBloc.resultado),
        ],
      ),
    );
  }
}