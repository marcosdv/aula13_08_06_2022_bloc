import 'package:aula13_08_06_2022_bloc/ios/ui/home_page.dart';
import 'package:flutter/cupertino.dart';

class IosApp extends StatelessWidget {
  const IosApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'Minhas Notas',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}