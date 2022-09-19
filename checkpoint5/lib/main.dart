import 'package:checkpoint5/controller/controller.dart';
import 'package:checkpoint5/desktop.dart';
import 'package:checkpoint5/myhomepage.dart';
import 'package:checkpoint5/tablet.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: ChangeNotifierProvider(
        create: (context) => Controller(),
        child: ScreenTypeLayout(
          mobile: const MyHomePage(),
          tablet: const Tablet(),
          desktop: const Desktop(),
          watch: Container(color: Colors.purple),
        ),
      ),
    );
  }
}
