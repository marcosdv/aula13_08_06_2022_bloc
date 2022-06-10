import 'package:aula13_08_06_2022_bloc/android/ui/components/campo_texto.dart';
import 'package:aula13_08_06_2022_bloc/blocs/notas_bloc.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final notasBloc = NotasBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minhas Notas - Android'),
      ),
      body: ListView(
        children: [
          CampoTexto(notasBloc.nota1Controller, 'Nota 1º Bimestre'),
          CampoTexto(notasBloc.nota2Controller, 'Nota 2º Bimestre'),

          ElevatedButton(
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