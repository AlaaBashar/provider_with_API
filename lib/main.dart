import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_2/Pages/HomePage.dart';

import 'Provider/Counter.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<Counters>(create: (_) => Counters()),

    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}
