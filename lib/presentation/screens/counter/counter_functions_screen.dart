import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Contador"), actions: [
        IconButton(
          onPressed: () {
            setState(() {
              counter = 0;
            });
          },
          icon: const Icon(Icons.refresh_rounded),
        ),
      ]),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(
            icon: Icons.refresh_outlined,
            onPressed: () {
              counter = 0;
              setState(() {});
            },
          ),
          const SizedBox(height: 10),
          CustomButton(
            icon: Icons.plus_one,
            onPressed: () {
              counter++;
              setState(() {});
            },
          ),
          const SizedBox(height: 10),
          CustomButton(
            icon: Icons.exposure_minus_1_outlined,
            onPressed: () {
              if (counter == 0) return;
              counter--;
              setState(() {});
            },
          ),
        ],
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

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    required this.icon, // This parameter is required
    this.onPressed, // This parameter is optional
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      // backgroundColor: Colors.primaries.first,
      enableFeedback: true,
      onPressed: onPressed,
      // child: const Icon(Icons.exposure_minus_1_outlined),
      child: Icon(icon),
    );
  }
}
