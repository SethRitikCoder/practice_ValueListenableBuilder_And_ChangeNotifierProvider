import 'package:change_notifier_learnt/screens/value_listenable_builder.dart';
import 'package:change_notifier_learnt/text_provider.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(create:(context)=>TextProvider(),child:  const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Learn Change Notifire',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
        primaryColor: Color.fromRGBO(0, 168, 132, 1),
      ),
      home: MyHomePage(),
    );
  }
}
