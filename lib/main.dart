import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Principal(),
    );
  }
}

class Contato {
  final String nome;
  final String telefone;
  final String email;

  Contato({required this.nome, required this.telefone, required this.email});
}
