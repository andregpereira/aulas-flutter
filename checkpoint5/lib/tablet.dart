import 'package:flutter/material.dart';

class Tablet extends StatelessWidget {
  const Tablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tablet")),
      body: const Center(
        child: Text("Esse é um tablet"),
      ),
    );
  }
}
