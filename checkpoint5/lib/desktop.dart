import 'package:flutter/material.dart';

class Desktop extends StatelessWidget {
  const Desktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Desktop")),
      body: const Center(
        child: Text("Esse é um desktop"),
      ),
    );
  }
}
