import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/screens/counter/counter_functions_screen.dart';
// import 'package:flutter_application_1/presentation/screens/counter/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.black26,
        useMaterial3: true,
      ),
      home: const CounterFunctionsScreen(),
    );
  }
}
