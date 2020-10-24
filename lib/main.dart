import 'package:flutter/material.dart';
import 'package:testFlutterApp/intro.dart';
import './provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => ChangeNotifierProvider<IntroPro>(
                                  create: (context)=> IntroPro(),
                                  child: Intro(),
                                ),
    },            
   )
  );
}
