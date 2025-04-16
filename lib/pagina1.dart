import 'package:flutter/material.dart';

class Pagina1 extends StatefulWidget {
  const Pagina1({Key? key}) : super(key: key);

  @override
  State<Pagina1> createState() => _Pagina1State();
}

class _Pagina1State extends State<Pagina1> with SingleTickerProviderStateMixin {
  // Declaração correta da lista de estudantes.
  final List<String> listaEstudantes = ["Nome 1", "Nome 2", "Nome 3","Nome 4"];
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      // Define a duração se necessário
      
      duration: const Duration(seconds: 1),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista de Estudantes"),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: listaEstudantes.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              listaEstudantes[index],
              style: const TextStyle(fontSize: 18),
            ),
          );
        },
      ),
    );
  }
}
