import 'package:flutter/material.dart';
import 'package:testFlutterApp/intro.dart';
import './provider.dart';
import 'package:provider/provider.dart';

void main() {

  runApp(
    ChangeNotifierProvider<IntroPro>(
      create: (context)=> IntroPro('dark'),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Consumer<IntroPro>(
      builder: (_ , instance , child){
         MaterialApp(
            title: 'Norhan App',
            theme: instance.getTheme(),
            home: Intro(),
         );
      },
    );
  }
}
