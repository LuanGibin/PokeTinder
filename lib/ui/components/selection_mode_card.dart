import 'package:flutter/material.dart';

class SelectionModeCard extends StatelessWidget {
  const SelectionModeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // LADO ESQUERDO: Dividido em 2 linhas
        Expanded(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.blue[100],
                  child: Center(child: Text("Linha 1")),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.blue[300],
                  child: Center(child: Text("Linha 2")),
                ),
              ),
            ],
          ),
        ),

        // LADO DIREITO: Imagem única
        Expanded(
          child: Image.network(
            'https://via.placeholder.com/150',
            fit: BoxFit.cover, // Faz a imagem preencher todo o espaço
          ),
        ),
      ],
    );
  }
}
