import 'package:flutter/material.dart';

class Lista extends StatelessWidget {
  List<String> dias = [
    'domingo',
    'segunda',
    'terça',
    'quarta',
    'quinta',
    'sexta',
    'sábado'
  ];

  Lista({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal, // Define o scroll horizontal
      itemCount: dias.length,
      itemBuilder: (context, index) {
        // Verifica se é o último item da lista para não adicionar SizedBox depois
        bool isLastItem = index == dias.length - 1;

        return Row(
          children: [
            Text(dias[index]),
            // Adiciona SizedBox de largura 30 entre os itens, exceto após o último item
            if (!isLastItem) SizedBox(width: 30),
          ],
        );
      },
    );
  }
}
