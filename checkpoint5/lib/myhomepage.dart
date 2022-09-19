import 'package:checkpoint5/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider"),
      ),
      body: Consumer<Controller>(
        builder: (context, value, __) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  value.number.toString(),
                  style: const TextStyle(fontSize: 25),
                ),
              )
            ],
          );
        },
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: () =>
                Provider.of<Controller>(context, listen: false).incNumber(),
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            height: 10,
            width: 10,
          ),
          FloatingActionButton(
            backgroundColor: Colors.red,
            onPressed: () =>
                Provider.of<Controller>(context, listen: false).decNumber(),
            child: const Icon(Icons.delete),
          ),
        ],
      ),
    );
  }
}
