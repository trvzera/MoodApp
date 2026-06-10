import 'package:desafio/pages/telaCadastro.dart';
import 'package:desafio/pages/telalogin.dart';
import 'package:flutter/material.dart';

class TelaHome extends StatefulWidget {
  @override
  State<TelaHome> createState() => _TelaHomeState();
}

class _TelaHomeState extends State<TelaHome> {
  bool feliz = false;
  bool tranquilo = false;
  bool triste = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'HOME',
          style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 4),
        ),
        backgroundColor: Colors.black38,
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "Escolha o humor que melhor define o dia de hoje!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: Color.fromARGB(255, 22, 22, 22),
              ),
            ),
            const SizedBox(height: 20),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    expandido = !expandido;
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  width: expandido ? 300 : 130,
                  height: expandido ? 300 : 130,
                  decoration: BoxDecoration(
                      color: expandido ? Colors.blue : Colors.orange,
                      borderRadius: BorderRadius.circular(expandido ? 30 : 10)),
                ),
              ),
            ])
          ]),
        ),
      ),
    );
  }
}
