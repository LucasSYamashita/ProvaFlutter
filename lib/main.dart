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
class ContatosRepository {
  final List<Contato> contatos = [];

  void addContato(Contato c) {
    contatos.add(c);
  }

  void updateContato(int index, Contato contato) {
    contatos[index] = contato;
  }

  void deleteContato(int index) {
    contatos.removeAt(index);
  }

  List<Contato> getContatos() {
    return contatos;
  }
}

class Principal extends StatelessWidget {
  final ContatosRepository contatos = ContatosRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agenda de Contatos'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Cadastro(contatos: contatos),
                ),
              );
            },
            child: Text("Cadastrar Contato"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Listagem(contatos: contatos),
                ),
              );
            },
            child: Text("Listar Contatos"),
          ),
        ],
      ),
    );
  }
}

