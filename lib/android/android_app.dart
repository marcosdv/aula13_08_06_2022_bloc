import 'package:aula13_08_06_2022_bloc/android/ui/home_page.dart';
import 'package:flutter/material.dart';

class AndroidApp extends StatelessWidget {
  const AndroidApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Minhas Notas',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}