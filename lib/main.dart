import 'package:flutter/material.dart';
//meu app
void main() {
  runApp(
    MaterialApp(
        home: Material(
          color: const Color(0xFFB3B3B3),
          child: Center(
            child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Card(
                  margin: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          leading: Image.asset('assets/img.png'),
                          title: const Text('Imagem'),
                          subtitle: const Text('O dia tem duas horas a mais pra quem é esforçado!'),
                        ),
                ],
              ),
            ),
             Card(
                margin: const EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Image.asset('assets/img.png'),
                      title: const Text('Imagem'),
                      subtitle: const Text('O dia tem duas horas a mais pra quem é esforçado!'),
                    )
                  ],
                ),
            ),
          ],
        ),
      ),
        ),
    ),


  );
}
