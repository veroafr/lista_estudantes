import 'package:flutter/material.dart';

class MeuWidget extends StatefulWidget {
  final String nome;
  final String curso;
  final Function() onDelete;

  const MeuWidget({required this.nome, required this.curso, required this.onDelete, super.key});

  @override
  State<MeuWidget> createState() => _MeuWidgetState();
}

class _MeuWidgetState extends State<MeuWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      child: Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.nome),
                  Text(widget.curso),
                  


                ],
              ),
              IconButton(
                 onPressed: widget.onDelete,
                icon: const Icon(Icons.close),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
