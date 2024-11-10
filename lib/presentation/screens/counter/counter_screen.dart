import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter screen"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter++;
          setState(() {});
        },
        child: const Icon(Icons.plus_one),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$counter',
            style: const TextStyle(fontSize: 128, fontWeight: FontWeight.w300),
          ),
          Text(
            (counter == 1) ? "Click" : "Clicks",
            style: const TextStyle(fontSize: 32, fontWeight: FontWeight.w400),
          )
        ],
      )),
    );
  }
}
