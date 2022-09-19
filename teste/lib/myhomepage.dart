import 'package:teste/secondpage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();
  final user = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          SizedBox(
            height: 300,
            width: double.infinity,
            child: Center(
              child: Image.asset('assets/login.jpg'),
            ),
          ),
          Center(
            child: Text(
              "Login",
              style: GoogleFonts.acme(
                fontSize: 30,
              ),
            ),
          ),
          Form(
            key: _formKey,
            child: Column(
              children: [
                _form('Usuário', 'Usuário', false, user),
                _form('Senha', 'Senha', true, password),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
              ),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const SecondPage(),
                    ),
                  );
                }
              },
              child: const Text('Entrar'),
            ),
          ),
          Center(
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'Cadastrar-se',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

_form(label, hintext, bool obscure, controller) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: TextFormField(
      validator: (val) {
        if (val!.isEmpty) return 'Campo Obrigatório';
      },
      controller: controller,
      keyboardType: TextInputType.number,
      obscureText: obscure,
      decoration: InputDecoration(
        labelText: label,
        hintText: hintext,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
  );
}