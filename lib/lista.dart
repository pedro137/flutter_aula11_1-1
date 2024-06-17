  import 'package:flutter/material.dart';

class Lista extends StatelessWidget {
  List<String> dias = [ 'domingo', 'segunda', 'terça'];

  Lista({super.key});

  @override
  Widget build(BuildContext context) {
    // return const Placeholder();
    return ListView.builder(
      itemCount: dias.length,
      itemBuilder: (context, index) {
        return Row(
          	children: [
	            Text(dias[index]),
            ],
        );
      },
    );
  }
}
