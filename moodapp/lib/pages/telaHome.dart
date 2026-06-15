import 'package:flutter/material.dart';

class TelaHome extends StatefulWidget {
  @override
  State<TelaHome> createState() => _TelaHomeState();
}

class _TelaHomeState extends State<TelaHome> {
  bool feliz = false;
  bool tranquilo = false;
  bool triste = false;
  String mensagem = "Escolha o humor que melhor define o dia de hoje!";
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
              mensagem,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: Color.fromARGB(255, 22, 22, 22),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.all(16),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      feliz = !feliz;
                      if (triste) {
                        triste = false;
                      }
                      if (tranquilo) {
                        tranquilo = false;
                      }
                      if (feliz) {
                        mensagem = "Hoje estou feliz!";
                      } else {
                        mensagem =
                            "Escolha o humor que melhor define o dia de hoje!";
                      }
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    width: feliz ? 75 : 60,
                    height: feliz ? 75 : 60,
                    decoration: BoxDecoration(
                        color: feliz ? Colors.orangeAccent : Colors.orange,
                        borderRadius: BorderRadius.circular(feliz ? 100 : 10)),
                    child: Icon(Icons.face,
                        color: const Color.fromARGB(255, 255, 241, 178)),
                  ),
                ),
                const SizedBox(width: 20),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      tranquilo = !tranquilo;
                      if (triste) {
                        triste = false;
                      }
                      if (feliz) {
                        feliz = false;
                      }
                      if (tranquilo) {
                        mensagem = "Hoje estou tranquilo!";
                      } else {
                        mensagem =
                            "Escolha o humor que melhor define o dia de hoje!";
                      }
                    });
                  },
                  child: AnimatedOpacity(
                    opacity: tranquilo ? 0.5 : 1,
                    duration: const Duration(seconds: 1),
                    child: AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        width: tranquilo ? 90 : 60,
                        height: tranquilo ? 50 : 60,
                        decoration: BoxDecoration(
                          color: tranquilo
                              ? Colors.lightBlueAccent
                              : Colors.lightBlue,
                          borderRadius:
                              BorderRadius.circular(tranquilo ? 30 : 10),
                        ),
                        child: Icon(Icons.cloud, color: Colors.white)),
                  ),
                ),
                const SizedBox(width: 20),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      triste = !triste;
                      if (feliz) {
                        feliz = false;
                      }
                      if (tranquilo) {
                        tranquilo = false;
                      }
                      if (triste) {
                        mensagem = "Hoje estou triste!";
                      } else {
                        mensagem =
                            "Escolha o humor que melhor define o dia de hoje!";
                      }
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    width: triste ? 50 : 60,
                    height: triste ? 50 : 60,
                    decoration: BoxDecoration(
                        color: triste ? Colors.blue : Colors.blueAccent,
                        borderRadius: BorderRadius.circular(triste ? 0 : 10)),
                    child: Icon(Icons.water,
                        color: const Color.fromARGB(255, 177, 211, 255)),
                  ),
                ),
              ]),
            ),
          ]),
        ),
      ),
    );
  }
}
