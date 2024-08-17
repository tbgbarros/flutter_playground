import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  void increment(){
    setState(() {
      counter++;
    });
    print('Counter: $counter');
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('Classic Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Você clicou no botão '),
            Text('${counter}',
            style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.bold,
              ),
            ),
            Text(' vezes'),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.large(
          child: Icon(Icons.add),
          onPressed: increment,
      ),
    );
  }
}