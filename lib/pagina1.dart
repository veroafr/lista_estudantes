import 'package:flutter/material.dart';
import 'package:lista_pessoas/estudante.dart';
import 'package:lista_pessoas/meuwidget.dart';

class Pagina1 extends StatefulWidget {
  Pagina1({Key? key}) : super(key: key);

  @override
  _Pagina1State createState() => _Pagina1State();
}

class _Pagina1State extends State<Pagina1> {
  final List<Estudante> listaEstudantes = [
    Estudante(nome: "Matias", curso: "TADS"),
    Estudante(nome: "Santiago", curso: "TADS"),
    Estudante(nome: "Luis", curso: "TADS"),
    Estudante(nome: "Victor", curso: "CC"),
    Estudante(nome: "Helena", curso: "SER"),
  ];

  void _delete(int index) {
    setState(() {
      listaEstudantes.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Estudantes'),
        backgroundColor: const Color.fromARGB(255, 100, 128, 101),
      ),
      body: ListView.builder(
        itemCount: listaEstudantes.length,
        itemBuilder: (context, index) {
          return MeuWidget(nome: listaEstudantes[index].nome, curso: listaEstudantes[index].curso, onDelete: () => _delete(index));
        },
      ),
    );
  }
}
