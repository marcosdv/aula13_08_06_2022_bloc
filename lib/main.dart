import 'dart:io';
import 'package:aula13_08_06_2022_bloc/android/android_app.dart';
import 'package:aula13_08_06_2022_bloc/ios/ios_app.dart';
import 'package:flutter/material.dart';

void main() => runApp(Platform.isAndroid ? const IosApp() : const AndroidApp());

/*
void main() {
  if (Platform.isIOS) {
    runApp(IosApp());
  }
  else {
    runApp(AndroidApp());
  }
}
*/